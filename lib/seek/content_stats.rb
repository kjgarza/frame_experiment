module Seek
  class ContentStats
    TYPES_FOR_STATS = [Investigation, Study, Assay, DataFile, Model, Sop, Presentation]

    class ProjectStats
      attr_accessor :project, :sops, :data_files, :models, :publications, :people, :assays, :studies, :investigations, :presentations, :user

      def initialize
        @user = User.first
      end

      TYPES_FOR_STATS.each do |type|
        type_class_name = type.name
        type_str = type_class_name.underscore.pluralize
        define_method "visible_#{type_str}" do
          authorised_assets type_class_name, 'view', @user
        end

        define_method "accessible_#{type_str}" do
          authorised_assets type_class_name, 'download', @user
        end

        define_method "publicly_visible_#{type_str}" do
          authorised_assets type_class_name, 'view', nil
        end

        define_method "publicly_accessible_#{type_str}" do
          authorised_assets type_class_name, 'download', nil
        end

      end

      def registered_people
        people.select { |person| person.user }
      end

      private

      def authorised_assets(asset_type, action, user)
        asset_class = asset_type.constantize
        assets = asset_class.all_authorized_for(action, user, project)
        # this is necessary because some non downloadable items (such as assay) can possible be marked as downloadable in the
        # authorization info due to an earlier bug
        if action == 'download' && asset_class.new.is_downloadable?
          []
        else
          assets
        end
      end
    end

    def self.generate
      result = []
      Project.all.each do |project|
        project_stats = ProjectStats.new
        project_stats.project = project
        project_stats.people = project.people
        TYPES_FOR_STATS.each do |type|
          type_str = type.name.underscore.pluralize
          project_stats.send(type_str + '=', project.send(type_str))
        end

        project_stats.publications = project.publications
        result << project_stats
      end
      result
    end
  end
end
