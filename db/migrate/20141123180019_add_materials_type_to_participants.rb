class AddMaterialsTypeToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :materials_type, :string
  end
end
