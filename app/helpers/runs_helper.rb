module RunsHelper

  def runs_table(runs, redirect_to=nil)
    runs.map do |run|
      workflow = run.workflow
      version = run.workflow_version
      workflow_version = workflow.find_version(version)

      created_at = run.created_at.strftime("%e %b %Y %H:%M:%S %Z")

      if run.is_a?(Sweep)
        finish_time = run.runs.any? {|r| r.finish_time.blank? } ? '' : run.runs.map { |r| r.finish_time }.max.strftime("%e %b %Y %H:%M:%S %Z")
      else
        finish_time = run.finish_time.blank? ? '' : run.finish_time.strftime("%e %b %Y %H:%M:%S %Z")
      end

      action_buttons = render(:partial => "taverna_player/runs/delete_or_cancel_button", :locals => { :run => run, :redirect_to => redirect_to })
      [link_to("#{image(run.is_a?(Sweep) ? 'sweep_run' : 'simple_run')} #{run.name}".html_safe, run.is_a?(Sweep) ? main_app.sweep_path(run) : taverna_player.run_path(run)),
       workflow.can_view? ? link_to(workflow_version.title, main_app.workflow_path(workflow, :version => version)) : workflow_version.title,
       workflow.category.name,
       "#{run.state} #{(run.complete? ? '' : image_tag('ajax-loader.gif', :style => "vertical-align: middle"))}".html_safe,
       created_at,
       finish_time,
       action_buttons]
    end
  end

  def mime_type_options(original)
    types = [["text/plain", "text/plain"], ["text/csv", "text/csv"]]
    types.prepend([original, original]) unless types.any? { |a| a[0] == original }
    options_for_select([[p.metadata[:type], p.metadata[:type]], ["text/csv", "text/csv"]])
  end

end