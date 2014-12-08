                              participants_index GET    /participants/index(.:format)                                                participants#index
                                  taverna_player        /                                                                            TavernaPlayer::Engine
                                   search_scales POST   /scales/search(.:format)                                                     scales#search
             search_and_lazy_load_results_scales POST   /scales/search_and_lazy_load_results(.:format)                               scales#search_and_lazy_load_results
                                          scales GET    /scales(.:format)                                                            scales#index
                                                 POST   /scales(.:format)                                                            scales#create
                                       new_scale GET    /scales/new(.:format)                                                        scales#new
                                      edit_scale GET    /scales/:id/edit(.:format)                                                   scales#edit
                                           scale GET    /scales/:id(.:format)                                                        scales#show
                                                 PUT    /scales/:id(.:format)                                                        scales#update
                                                 DELETE /scales/:id(.:format)                                                        scales#destroy
                                            root        /                                                                            homes#index
                                           admin GET    /admin(.:format)                                                             admins#show
                                      tags_admin GET    /admin/tags(.:format)                                                        admins#tags
                          features_enabled_admin GET    /admin/features_enabled(.:format)                                            admins#features_enabled
                                   rebrand_admin GET    /admin/rebrand(.:format)                                                     admins#rebrand
                             home_settings_admin GET    /admin/home_settings(.:format)                                               admins#home_settings
                                pagination_admin GET    /admin/pagination(.:format)                                                  admins#pagination
                                    others_admin GET    /admin/others(.:format)                                                      admins#others
                                 get_stats_admin GET    /admin/get_stats(.:format)                                                   admins#get_stats
                         registration_form_admin GET    /admin/registration_form(.:format)                                           admins#registration_form
                                  edit_tag_admin GET    /admin/edit_tag(.:format)                                                    admins#edit_tag
                      update_home_settings_admin POST   /admin/update_home_settings(.:format)                                        admins#update_home_settings
                            restart_server_admin POST   /admin/restart_server(.:format)                                              admins#restart_server
                       restart_delayed_job_admin POST   /admin/restart_delayed_job(.:format)                                         admins#restart_delayed_job
                                                 POST   /admin/get_stats(.:format)                                                   admins#get_stats
                             update_admins_admin POST   /admin/update_admins(.:format)                                               admins#update_admins
                            update_rebrand_admin POST   /admin/update_rebrand(.:format)                                              admins#update_rebrand
                  test_email_configuration_admin POST   /admin/test_email_configuration(.:format)                                    admins#test_email_configuration
                             update_others_admin POST   /admin/update_others(.:format)                                               admins#update_others
                   update_features_enabled_admin POST   /admin/update_features_enabled(.:format)                                     admins#update_features_enabled
                         update_pagination_admin POST   /admin/update_pagination(.:format)                                           admins#update_pagination
                                delete_tag_admin POST   /admin/delete_tag(.:format)                                                  admins#delete_tag
                                                 POST   /admin/edit_tag(.:format)                                                    admins#edit_tag
                                                 POST   /admin(.:format)                                                             admins#create
                                       new_admin GET    /admin/new(.:format)                                                         admins#new
                                      edit_admin GET    /admin/edit(.:format)                                                        admins#edit
                                                 GET    /admin(.:format)                                                             admins#show
                                                 PUT    /admin(.:format)                                                             admins#update
                                                 DELETE /admin(.:format)                                                             admins#destroy
                                            home GET    /home(.:format)                                                              homes#index
                                   feedback_home GET    /home/feedback(.:format)                                                     homes#feedback
                              send_feedback_home POST   /home/send_feedback(.:format)                                                homes#send_feedback
                                                 POST   /home(.:format)                                                              homes#create
                                        new_home GET    /home/new(.:format)                                                          homes#new
                                       edit_home GET    /home/edit(.:format)                                                         homes#edit
                                                 GET    /home(.:format)                                                              homes#show
                                                 PUT    /home(.:format)                                                              homes#update
                                                 DELETE /home(.:format)                                                              homes#destroy
                                           match        /index.html(.:format)                                                        homes#index
                                           match        /index(.:format)                                                             homes#index
                                       my_biovel        /my_biovel(.:format)                                                         homes#my_biovel
                                  add_favourites POST   /favourites/add(.:format)                                                    favourites#add
                               delete_favourites DELETE /favourites/delete(.:format)                                                 favourites#delete
                                      favourites POST   /favourites(.:format)                                                        favourites#create
                                  new_favourites GET    /favourites/new(.:format)                                                    favourites#new
                                 edit_favourites GET    /favourites/edit(.:format)                                                   favourites#edit
                                                 GET    /favourites(.:format)                                                        favourites#show
                                                 PUT    /favourites(.:format)                                                        favourites#update
                                                 DELETE /favourites(.:format)                                                        favourites#destroy
          download_help_document_help_attachment GET    /help/:help_document_id/attachments/:id/download(.:format)                   help_attachments#download
                  help_document_help_attachments POST   /help/:help_document_id/attachments(.:format)                                help_attachments#create
                   help_document_help_attachment DELETE /help/:help_document_id/attachments/:id(.:format)                            help_attachments#destroy
                       help_document_help_images POST   /help/:help_document_id/images(.:format)                                     help_images#create
                        help_document_help_image DELETE /help/:help_document_id/images/:id(.:format)                                 help_images#destroy
                                  help_documents GET    /help(.:format)                                                              help_documents#index
                                                 POST   /help(.:format)                                                              help_documents#create
                               new_help_document GET    /help/new(.:format)                                                          help_documents#new
                              edit_help_document GET    /help/:id/edit(.:format)                                                     help_documents#edit
                                   help_document GET    /help/:id(.:format)                                                          help_documents#show
                                                 PUT    /help/:id(.:format)                                                          help_documents#update
                                                 DELETE /help/:id(.:format)                                                          help_documents#destroy
                        download_help_attachment GET    /help_attachments/:id/download(.:format)                                     help_attachments#download
                                help_attachments POST   /help_attachments(.:format)                                                  help_attachments#create
                                 help_attachment DELETE /help_attachments/:id(.:format)                                              help_attachments#destroy
                                     help_images POST   /help_images(.:format)                                                       help_images#create
                                      help_image DELETE /help_images/:id(.:format)                                                   help_images#destroy
                       download_forum_attachment GET    /forum_attachments/:id/download(.:format)                                    forum_attachments#download
                               forum_attachments POST   /forum_attachments(.:format)                                                 forum_attachments#create
                                forum_attachment DELETE /forum_attachments/:id(.:format)                                             forum_attachments#destroy
                                         avatars GET    /avatars(.:format)                                                           avatars#index
                                                 POST   /avatars(.:format)                                                           avatars#create
                                      new_avatar GET    /avatars/new(.:format)                                                       avatars#new
                                     edit_avatar GET    /avatars/:id/edit(.:format)                                                  avatars#edit
                                          avatar GET    /avatars/:id(.:format)                                                       avatars#show
                                                 PUT    /avatars/:id(.:format)                                                       avatars#update
                                                 DELETE /avatars/:id(.:format)                                                       avatars#destroy
                                     attachments GET    /attachments(.:format)                                                       attachments#index
                                                 POST   /attachments(.:format)                                                       attachments#create
                                  new_attachment GET    /attachments/new(.:format)                                                   attachments#new
                                 edit_attachment GET    /attachments/:id/edit(.:format)                                              attachments#edit
                                      attachment GET    /attachments/:id(.:format)                                                   attachments#show
                                                 PUT    /attachments/:id(.:format)                                                   attachments#update
                                                 DELETE /attachments/:id(.:format)                                                   attachments#destroy
                                   subscriptions GET    /subscriptions(.:format)                                                     subscriptions#index
                                                 POST   /subscriptions(.:format)                                                     subscriptions#create
                                new_subscription GET    /subscriptions/new(.:format)                                                 subscriptions#new
                               edit_subscription GET    /subscriptions/:id/edit(.:format)                                            subscriptions#edit
                                    subscription GET    /subscriptions/:id(.:format)                                                 subscriptions#show
                                                 PUT    /subscriptions/:id(.:format)                                                 subscriptions#update
                                                 DELETE /subscriptions/:id(.:format)                                                 subscriptions#destroy
                                  measured_items GET    /measured_items(.:format)                                                    measured_items#index
                                                 POST   /measured_items(.:format)                                                    measured_items#create
                               new_measured_item GET    /measured_items/new(.:format)                                                measured_items#new
                              edit_measured_item GET    /measured_items/:id/edit(.:format)                                           measured_items#edit
                                   measured_item GET    /measured_items/:id(.:format)                                                measured_items#show
                                                 PUT    /measured_items/:id(.:format)                                                measured_items#update
                                                 DELETE /measured_items/:id(.:format)                                                measured_items#destroy
                                  saved_searches GET    /saved_searches(.:format)                                                    saved_searches#index
                                                 POST   /saved_searches(.:format)                                                    saved_searches#create
                                new_saved_search GET    /saved_searches/new(.:format)                                                saved_searches#new
                               edit_saved_search GET    /saved_searches/:id/edit(.:format)                                           saved_searches#edit
                                    saved_search GET    /saved_searches/:id(.:format)                                                saved_searches#show
                                                 PUT    /saved_searches/:id(.:format)                                                saved_searches#update
                                                 DELETE /saved_searches/:id(.:format)                                                saved_searches#destroy
                                           uuids GET    /uuids(.:format)                                                             uuids#index
                                                 POST   /uuids(.:format)                                                             uuids#create
                                        new_uuid GET    /uuids/new(.:format)                                                         uuids#new
                                       edit_uuid GET    /uuids/:id/edit(.:format)                                                    uuids#edit
                                            uuid GET    /uuids/:id(.:format)                                                         uuids#show
                                                 PUT    /uuids/:id(.:format)                                                         uuids#update
                                                 DELETE /uuids/:id(.:format)                                                         uuids#destroy
                     search_in_sabiork_compounds POST   /compounds/search_in_sabiork(.:format)                                       compounds#search_in_sabiork
                                       compounds GET    /compounds(.:format)                                                         compounds#index
                                                 POST   /compounds(.:format)                                                         compounds#create
                                    new_compound GET    /compounds/new(.:format)                                                     compounds#new
                                   edit_compound GET    /compounds/:id/edit(.:format)                                                compounds#edit
                                        compound GET    /compounds/:id(.:format)                                                     compounds#show
                                                 PUT    /compounds/:id(.:format)                                                     compounds#update
                                                 DELETE /compounds/:id(.:format)                                                     compounds#destroy
                       activation_required_users GET    /users/activation_required(.:format)                                         users#activation_required
                           forgot_password_users GET    /users/forgot_password(.:format)                                             users#forgot_password
                            reset_password_users GET    /users/reset_password(.:format)                                              users#reset_password
                                                 POST   /users/forgot_password(.:format)                                             users#forgot_password
                            hide_guide_box_users POST   /users/hide_guide_box(.:format)                                              users#hide_guide_box
                               impersonate_users POST   /users/impersonate(.:format)                                                 users#impersonate
                       cancel_registration_users POST   /users/cancel_registration(.:format)                                         users#cancel_registration
                                 set_openid_user PUT    /users/:id/set_openid(.:format)                                              users#set_openid
                                           users GET    /users(.:format)                                                             users#index
                                                 POST   /users(.:format)                                                             users#create
                                        new_user GET    /users/new(.:format)                                                         users#new
                                       edit_user GET    /users/:id/edit(.:format)                                                    users#edit
                                            user GET    /users/:id(.:format)                                                         users#show
                                                 PUT    /users/:id(.:format)                                                         users#update
                                                 DELETE /users/:id(.:format)                                                         users#destroy
                                         session GET    /session(.:format)                                                           sessions#index
                                                 GET    /session(.:format)                                                           sessions#show
                             auto_openid_session GET    /session/auto_openid(.:format)                                               sessions#auto_openid
                                                 GET    /session(.:format)                                                           sessions#show
                                                 POST   /session(.:format)                                                           sessions#create
                                     new_session GET    /session/new(.:format)                                                       sessions#new
                                    edit_session GET    /session/edit(.:format)                                                      sessions#edit
                                                 GET    /session(.:format)                                                           sessions#show
                                                 PUT    /session(.:format)                                                           sessions#update
                                                 DELETE /session(.:format)                                                           sessions#destroy
                                   select_people GET    /people/select(.:format)                                                     people#select
                           get_work_group_people GET    /people/get_work_group(.:format)                                             people#get_work_group
           userless_project_selected_ajax_people POST   /people/userless_project_selected_ajax(.:format)                             people#userless_project_selected_ajax
                         items_for_result_people POST   /people/items_for_result(.:format)                                           people#items_for_result
                          resource_in_tab_people POST   /people/resource_in_tab(.:format)                                            people#resource_in_tab
                      check_related_items_person POST   /people/:id/check_related_items(.:format)                                    people#check_related_items
                check_gatekeeper_required_person POST   /people/:id/check_gatekeeper_required(.:format)                              people#check_gatekeeper_required
                                    admin_person GET    /people/:id/admin(.:format)                                                  people#admin
                                published_person GET    /people/:id/published(.:format)                                              people#published
                 batch_publishing_preview_person GET    /people/:id/batch_publishing_preview(.:format)                               people#batch_publishing_preview
                    publish_related_items_person POST   /people/:id/publish_related_items(.:format)                                  people#publish_related_items
                        administer_update_person PUT    /people/:id/administer_update(.:format)                                      people#administer_update
                                  publish_person POST   /people/:id/publish(.:format)                                                people#publish
                requested_approval_assets_person GET    /people/:id/requested_approval_assets(.:format)                              people#requested_approval_assets
                        gatekeeper_decide_person POST   /people/:id/gatekeeper_decide(.:format)                                      people#gatekeeper_decide
               gatekeeper_decision_result_person GET    /people/:id/gatekeeper_decision_result(.:format)                             people#gatekeeper_decision_result
                  waiting_approval_assets_person GET    /people/:id/waiting_approval_assets(.:format)                                people#waiting_approval_assets
                                   select_person GET    /people/:id/select(.:format)                                                 people#select
                                 person_projects GET    /people/:person_id/projects(.:format)                                        projects#index
                             person_institutions GET    /people/:person_id/institutions(.:format)                                    institutions#index
                                   person_assays GET    /people/:person_id/assays(.:format)                                          assays#index
                                  person_studies GET    /people/:person_id/studies(.:format)                                         studies#index
                           person_investigations GET    /people/:person_id/investigations(.:format)                                  investigations#index
                                   person_models GET    /people/:person_id/models(.:format)                                          models#index
                                     person_sops GET    /people/:person_id/sops(.:format)                                            sops#index
                               person_data_files GET    /people/:person_id/data_files(.:format)                                      data_files#index
                            person_presentations GET    /people/:person_id/presentations(.:format)                                   presentations#index
                             person_publications GET    /people/:person_id/publications(.:format)                                    publications#index
                                   person_events GET    /people/:person_id/events(.:format)                                          events#index
                                  person_samples GET    /people/:person_id/samples(.:format)                                         samples#index
                                person_specimens GET    /people/:person_id/specimens(.:format)                                       specimens#index
                            select_person_avatar POST   /people/:person_id/avatars/:id/select(.:format)                              avatars#select
                                  person_avatars GET    /people/:person_id/avatars(.:format)                                         avatars#index
                                                 POST   /people/:person_id/avatars(.:format)                                         avatars#create
                               new_person_avatar GET    /people/:person_id/avatars/new(.:format)                                     avatars#new
                              edit_person_avatar GET    /people/:person_id/avatars/:id/edit(.:format)                                avatars#edit
                                   person_avatar GET    /people/:person_id/avatars/:id(.:format)                                     avatars#show
                                                 PUT    /people/:person_id/avatars/:id(.:format)                                     avatars#update
                                                 DELETE /people/:person_id/avatars/:id(.:format)                                     avatars#destroy
                                          people GET    /people(.:format)                                                            people#index
                                                 POST   /people(.:format)                                                            people#create
                                      new_person GET    /people/new(.:format)                                                        people#new
                                     edit_person GET    /people/:id/edit(.:format)                                                   people#edit
                                          person GET    /people/:id(.:format)                                                        people#show
                                                 PUT    /people/:id(.:format)                                                        people#update
                                                 DELETE /people/:id(.:format)                                                        people#destroy
                   request_institutions_projects GET    /projects/request_institutions(.:format)                                     projects#request_institutions
                                 manage_projects GET    /projects/manage(.:format)                                                   projects#manage
                       items_for_result_projects POST   /projects/items_for_result(.:format)                                         projects#items_for_result
                        resource_in_tab_projects POST   /projects/resource_in_tab(.:format)                                          projects#resource_in_tab
                            asset_report_project GET    /projects/:id/asset_report(.:format)                                         projects#asset_report
                                   admin_project GET    /projects/:id/admin(.:format)                                                projects#admin
                           admin_members_project GET    /projects/:id/admin_members(.:format)                                        projects#admin_members
                          update_members_project POST   /projects/:id/update_members(.:format)                                       projects#update_members
                                  project_people GET    /projects/:project_id/people(.:format)                                       people#index
                            project_institutions GET    /projects/:project_id/institutions(.:format)                                 institutions#index
                                  project_assays GET    /projects/:project_id/assays(.:format)                                       assays#index
                                 project_studies GET    /projects/:project_id/studies(.:format)                                      studies#index
                          project_investigations GET    /projects/:project_id/investigations(.:format)                               investigations#index
                                  project_models GET    /projects/:project_id/models(.:format)                                       models#index
                                    project_sops GET    /projects/:project_id/sops(.:format)                                         sops#index
                              project_data_files GET    /projects/:project_id/data_files(.:format)                                   data_files#index
                           project_presentations GET    /projects/:project_id/presentations(.:format)                                presentations#index
                            project_publications GET    /projects/:project_id/publications(.:format)                                 publications#index
                                  project_events GET    /projects/:project_id/events(.:format)                                       events#index
                                 project_samples GET    /projects/:project_id/samples(.:format)                                      samples#index
                               project_specimens GET    /projects/:project_id/specimens(.:format)                                    specimens#index
                                 project_strains GET    /projects/:project_id/strains(.:format)                                      strains#index
                           select_project_avatar POST   /projects/:project_id/avatars/:id/select(.:format)                           avatars#select
                                 project_avatars GET    /projects/:project_id/avatars(.:format)                                      avatars#index
                                                 POST   /projects/:project_id/avatars(.:format)                                      avatars#create
                              new_project_avatar GET    /projects/:project_id/avatars/new(.:format)                                  avatars#new
                             edit_project_avatar GET    /projects/:project_id/avatars/:id/edit(.:format)                             avatars#edit
                                  project_avatar GET    /projects/:project_id/avatars/:id(.:format)                                  avatars#show
                                                 PUT    /projects/:project_id/avatars/:id(.:format)                                  avatars#update
                                                 DELETE /projects/:project_id/avatars/:id(.:format)                                  avatars#destroy
                            nuke_project_folders POST   /projects/:project_id/folders/nuke(.:format)                                 folders#nuke
                     remove_asset_project_folder POST   /projects/:project_id/folders/:id/remove_asset(.:format)                     folders#remove_asset
                 display_contents_project_folder POST   /projects/:project_id/folders/:id/display_contents(.:format)                 folders#display_contents
                    move_asset_to_project_folder POST   /projects/:project_id/folders/:id/move_asset_to(.:format)                    folders#move_asset_to
                    create_folder_project_folder POST   /projects/:project_id/folders/:id/create_folder(.:format)                    folders#create_folder
         set_project_folder_title_project_folder POST   /projects/:project_id/folders/:id/set_project_folder_title(.:format)         folders#set_project_folder_title
   set_project_folder_description_project_folder POST   /projects/:project_id/folders/:id/set_project_folder_description(.:format)   folders#set_project_folder_description
                                 project_folders GET    /projects/:project_id/folders(.:format)                                      folders#index
                                                 POST   /projects/:project_id/folders(.:format)                                      folders#create
                              new_project_folder GET    /projects/:project_id/folders/new(.:format)                                  folders#new
                             edit_project_folder GET    /projects/:project_id/folders/:id/edit(.:format)                             folders#edit
                                  project_folder GET    /projects/:project_id/folders/:id(.:format)                                  folders#show
                                                 PUT    /projects/:project_id/folders/:id(.:format)                                  folders#update
                                                 DELETE /projects/:project_id/folders/:id(.:format)                                  folders#destroy
                                        projects GET    /projects(.:format)                                                          projects#index
                                                 POST   /projects(.:format)                                                          projects#create
                                     new_project GET    /projects/new(.:format)                                                      projects#new
                                    edit_project GET    /projects/:id/edit(.:format)                                                 projects#edit
                                         project GET    /projects/:id(.:format)                                                      projects#show
                                                 PUT    /projects/:id(.:format)                                                      projects#update
                                                 DELETE /projects/:id(.:format)                                                      projects#destroy
                        request_all_institutions GET    /institutions/request_all(.:format)                                          institutions#request_all
                   items_for_result_institutions POST   /institutions/items_for_result(.:format)                                     institutions#items_for_result
                    resource_in_tab_institutions POST   /institutions/resource_in_tab(.:format)                                      institutions#resource_in_tab
                              institution_people GET    /institutions/:institution_id/people(.:format)                               people#index
                            institution_projects GET    /institutions/:institution_id/projects(.:format)                             projects#index
                           institution_specimens GET    /institutions/:institution_id/specimens(.:format)                            specimens#index
                       select_institution_avatar POST   /institutions/:institution_id/avatars/:id/select(.:format)                   avatars#select
                             institution_avatars GET    /institutions/:institution_id/avatars(.:format)                              avatars#index
                                                 POST   /institutions/:institution_id/avatars(.:format)                              avatars#create
                          new_institution_avatar GET    /institutions/:institution_id/avatars/new(.:format)                          avatars#new
                         edit_institution_avatar GET    /institutions/:institution_id/avatars/:id/edit(.:format)                     avatars#edit
                              institution_avatar GET    /institutions/:institution_id/avatars/:id(.:format)                          avatars#show
                                                 PUT    /institutions/:institution_id/avatars/:id(.:format)                          avatars#update
                                                 DELETE /institutions/:institution_id/avatars/:id(.:format)                          avatars#destroy
                                    institutions GET    /institutions(.:format)                                                      institutions#index
                                                 POST   /institutions(.:format)                                                      institutions#create
                                 new_institution GET    /institutions/new(.:format)                                                  institutions#new
                                edit_institution GET    /institutions/:id/edit(.:format)                                             institutions#edit
                                     institution GET    /institutions/:id(.:format)                                                  institutions#show
                                                 PUT    /institutions/:id(.:format)                                                  institutions#update
                                                 DELETE /institutions/:id(.:format)                                                  institutions#destroy
                 items_for_result_investigations POST   /investigations/items_for_result(.:format)                                   investigations#items_for_result
                  resource_in_tab_investigations POST   /investigations/resource_in_tab(.:format)                                    investigations#resource_in_tab
                            investigation_people GET    /investigations/:investigation_id/people(.:format)                           people#index
                          investigation_projects GET    /investigations/:investigation_id/projects(.:format)                         projects#index
                            investigation_assays GET    /investigations/:investigation_id/assays(.:format)                           assays#index
                           investigation_studies GET    /investigations/:investigation_id/studies(.:format)                          studies#index
                            investigation_models GET    /investigations/:investigation_id/models(.:format)                           models#index
                              investigation_sops GET    /investigations/:investigation_id/sops(.:format)                             sops#index
                        investigation_data_files GET    /investigations/:investigation_id/data_files(.:format)                       data_files#index
                      investigation_publications GET    /investigations/:investigation_id/publications(.:format)                     publications#index
  new_object_based_on_existing_one_investigation GET    /investigations/:id/new_object_based_on_existing_one(.:format)               investigations#new_object_based_on_existing_one
                                  investigations GET    /investigations(.:format)                                                    investigations#index
                                                 POST   /investigations(.:format)                                                    investigations#create
                               new_investigation GET    /investigations/new(.:format)                                                investigations#new
                              edit_investigation GET    /investigations/:id/edit(.:format)                                           investigations#edit
                                   investigation GET    /investigations/:id(.:format)                                                investigations#show
                                                 PUT    /investigations/:id(.:format)                                                investigations#update
                                                 DELETE /investigations/:id(.:format)                                                investigations#destroy
             investigation_selected_ajax_studies POST   /studies/investigation_selected_ajax(.:format)                               studies#investigation_selected_ajax
                        items_for_result_studies POST   /studies/items_for_result(.:format)                                          studies#items_for_result
                         resource_in_tab_studies POST   /studies/resource_in_tab(.:format)                                           studies#resource_in_tab
          new_object_based_on_existing_one_study GET    /studies/:id/new_object_based_on_existing_one(.:format)                      studies#new_object_based_on_existing_one
                                    study_people GET    /studies/:study_id/people(.:format)                                          people#index
                                  study_projects GET    /studies/:study_id/projects(.:format)                                        projects#index
                                    study_assays GET    /studies/:study_id/assays(.:format)                                          assays#index
                            study_investigations GET    /studies/:study_id/investigations(.:format)                                  investigations#index
                                    study_models GET    /studies/:study_id/models(.:format)                                          models#index
                                      study_sops GET    /studies/:study_id/sops(.:format)                                            sops#index
                                study_data_files GET    /studies/:study_id/data_files(.:format)                                      data_files#index
                              study_publications GET    /studies/:study_id/publications(.:format)                                    publications#index
                                         studies GET    /studies(.:format)                                                           studies#index
                                                 POST   /studies(.:format)                                                           studies#create
                                       new_study GET    /studies/new(.:format)                                                       studies#new
                                      edit_study GET    /studies/:id/edit(.:format)                                                  studies#edit
                                           study GET    /studies/:id(.:format)                                                       studies#show
                                                 PUT    /studies/:id(.:format)                                                       studies#update
                                                 DELETE /studies/:id(.:format)                                                       studies#destroy
                                  preview_assays GET    /assays/preview(.:format)                                                    assays#preview
                         items_for_result_assays POST   /assays/items_for_result(.:format)                                           assays#items_for_result
                          resource_in_tab_assays POST   /assays/resource_in_tab(.:format)                                            assays#resource_in_tab
                   update_annotations_ajax_assay POST   /assays/:id/update_annotations_ajax(.:format)                                assays#update_annotations_ajax
          new_object_based_on_existing_one_assay GET    /assays/:id/new_object_based_on_existing_one(.:format)                       assays#new_object_based_on_existing_one
                                    assay_people GET    /assays/:assay_id/people(.:format)                                           people#index
                                  assay_projects GET    /assays/:assay_id/projects(.:format)                                         projects#index
                            assay_investigations GET    /assays/:assay_id/investigations(.:format)                                   investigations#index
                                   assay_studies GET    /assays/:assay_id/studies(.:format)                                          studies#index
                                    assay_models GET    /assays/:assay_id/models(.:format)                                           models#index
                                      assay_sops GET    /assays/:assay_id/sops(.:format)                                             sops#index
                                assay_data_files GET    /assays/:assay_id/data_files(.:format)                                       data_files#index
                              assay_publications GET    /assays/:assay_id/publications(.:format)                                     publications#index
                                   assay_strains GET    /assays/:assay_id/strains(.:format)                                          strains#index
                                          assays GET    /assays(.:format)                                                            assays#index
                                                 POST   /assays(.:format)                                                            assays#create
                                       new_assay GET    /assays/new(.:format)                                                        assays#new
                                      edit_assay GET    /assays/:id/edit(.:format)                                                   assays#edit
                                           assay GET    /assays/:id(.:format)                                                        assays#show
                                                 PUT    /assays/:id(.:format)                                                        assays#update
                                                 DELETE /assays/:id(.:format)                                                        assays#destroy
                    manage_suggested_assay_types GET    /suggested_assay_types/manage(.:format)                                      suggested_assay_types#manage
                           suggested_assay_types GET    /suggested_assay_types(.:format)                                             suggested_assay_types#index
                                                 POST   /suggested_assay_types(.:format)                                             suggested_assay_types#create
                        new_suggested_assay_type GET    /suggested_assay_types/new(.:format)                                         suggested_assay_types#new
                       edit_suggested_assay_type GET    /suggested_assay_types/:id/edit(.:format)                                    suggested_assay_types#edit
                            suggested_assay_type GET    /suggested_assay_types/:id(.:format)                                         suggested_assay_types#show
                                                 PUT    /suggested_assay_types/:id(.:format)                                         suggested_assay_types#update
                                                 DELETE /suggested_assay_types/:id(.:format)                                         suggested_assay_types#destroy
       manage_suggested_modelling_analysis_types GET    /suggested_assay_types/manage(.:format)                                      suggested_assay_types#manage
              suggested_modelling_analysis_types GET    /suggested_assay_types(.:format)                                             suggested_assay_types#index
                                                 POST   /suggested_assay_types(.:format)                                             suggested_assay_types#create
           new_suggested_modelling_analysis_type GET    /suggested_assay_types/new(.:format)                                         suggested_assay_types#new
          edit_suggested_modelling_analysis_type GET    /suggested_assay_types/:id/edit(.:format)                                    suggested_assay_types#edit
               suggested_modelling_analysis_type GET    /suggested_assay_types/:id(.:format)                                         suggested_assay_types#show
                                                 PUT    /suggested_assay_types/:id(.:format)                                         suggested_assay_types#update
                                                 DELETE /suggested_assay_types/:id(.:format)                                         suggested_assay_types#destroy
               manage_suggested_technology_types GET    /suggested_technology_types/manage(.:format)                                 suggested_technology_types#manage
                      suggested_technology_types GET    /suggested_technology_types(.:format)                                        suggested_technology_types#index
                                                 POST   /suggested_technology_types(.:format)                                        suggested_technology_types#create
                   new_suggested_technology_type GET    /suggested_technology_types/new(.:format)                                    suggested_technology_types#new
                  edit_suggested_technology_type GET    /suggested_technology_types/:id/edit(.:format)                               suggested_technology_types#edit
                       suggested_technology_type GET    /suggested_technology_types/:id(.:format)                                    suggested_technology_types#show
                                                 PUT    /suggested_technology_types/:id(.:format)                                    suggested_technology_types#update
                                                 DELETE /suggested_technology_types/:id(.:format)                                    suggested_technology_types#destroy
                              preview_data_files GET    /data_files/preview(.:format)                                                data_files#preview
                       test_asset_url_data_files POST   /data_files/test_asset_url(.:format)                                         data_files#test_asset_url
                      upload_for_tool_data_files POST   /data_files/upload_for_tool(.:format)                                        data_files#upload_for_tool
                    upload_from_email_data_files POST   /data_files/upload_from_email(.:format)                                      data_files#upload_from_email
                     items_for_result_data_files POST   /data_files/items_for_result(.:format)                                       data_files#items_for_result
                      resource_in_tab_data_files POST   /data_files/resource_in_tab(.:format)                                        data_files#resource_in_tab
                   check_related_items_data_file POST   /data_files/:id/check_related_items(.:format)                                data_files#check_related_items
                       matching_models_data_file GET    /data_files/:id/matching_models(.:format)                                    data_files#matching_models
                                  data_data_file GET    /data_files/:id/data(.:format)                                               data_files#data
             check_gatekeeper_required_data_file POST   /data_files/:id/check_gatekeeper_required(.:format)                          data_files#check_gatekeeper_required
                                  plot_data_file GET    /data_files/:id/plot(.:format)                                               data_files#plot
                               explore_data_file GET    /data_files/:id/explore(.:format)                                            data_files#explore
                              download_data_file GET    /data_files/:id/download(.:format)                                           data_files#download
                             published_data_file GET    /data_files/:id/published(.:format)                                          data_files#published
                 publish_related_items_data_file POST   /data_files/:id/publish_related_items(.:format)                              data_files#publish_related_items
                               publish_data_file POST   /data_files/:id/publish(.:format)                                            data_files#publish
                      request_resource_data_file POST   /data_files/:id/request_resource(.:format)                                   data_files#request_resource
               convert_to_presentation_data_file POST   /data_files/:id/convert_to_presentation(.:format)                            data_files#convert_to_presentation
               update_annotations_ajax_data_file POST   /data_files/:id/update_annotations_ajax(.:format)                            data_files#update_annotations_ajax
                           new_version_data_file POST   /data_files/:id/new_version(.:format)                                        data_files#new_version
                       destroy_version_data_file POST   /data_files/:id/destroy_version(.:format)                                    data_files#destroy_version
  create_from_existing_data_file_studied_factors POST   /data_files/:data_file_id/studied_factors/create_from_existing(.:format)     studied_factors#create_from_existing
                       data_file_studied_factors GET    /data_files/:data_file_id/studied_factors(.:format)                          studied_factors#index
                                                 POST   /data_files/:data_file_id/studied_factors(.:format)                          studied_factors#create
                    new_data_file_studied_factor GET    /data_files/:data_file_id/studied_factors/new(.:format)                      studied_factors#new
                   edit_data_file_studied_factor GET    /data_files/:data_file_id/studied_factors/:id/edit(.:format)                 studied_factors#edit
                        data_file_studied_factor GET    /data_files/:data_file_id/studied_factors/:id(.:format)                      studied_factors#show
                                                 PUT    /data_files/:data_file_id/studied_factors/:id(.:format)                      studied_factors#update
                                                 DELETE /data_files/:data_file_id/studied_factors/:id(.:format)                      studied_factors#destroy
         view_pdf_content_data_file_content_blob GET    /data_files/:data_file_id/content_blobs/:id/view_pdf_content(.:format)       content_blobs#view_pdf_content
                  get_pdf_data_file_content_blob GET    /data_files/:data_file_id/content_blobs/:id/get_pdf(.:format)                content_blobs#get_pdf
                 download_data_file_content_blob GET    /data_files/:data_file_id/content_blobs/:id/download(.:format)               content_blobs#download
                         data_file_content_blobs GET    /data_files/:data_file_id/content_blobs(.:format)                            content_blobs#index
                                                 POST   /data_files/:data_file_id/content_blobs(.:format)                            content_blobs#create
                      new_data_file_content_blob GET    /data_files/:data_file_id/content_blobs/new(.:format)                        content_blobs#new
                     edit_data_file_content_blob GET    /data_files/:data_file_id/content_blobs/:id/edit(.:format)                   content_blobs#edit
                          data_file_content_blob GET    /data_files/:data_file_id/content_blobs/:id(.:format)                        content_blobs#show
                                                 PUT    /data_files/:data_file_id/content_blobs/:id(.:format)                        content_blobs#update
                                                 DELETE /data_files/:data_file_id/content_blobs/:id(.:format)                        content_blobs#destroy
                                data_file_people GET    /data_files/:data_file_id/people(.:format)                                   people#index
                              data_file_projects GET    /data_files/:data_file_id/projects(.:format)                                 projects#index
                        data_file_investigations GET    /data_files/:data_file_id/investigations(.:format)                           investigations#index
                                data_file_assays GET    /data_files/:data_file_id/assays(.:format)                                   assays#index
                               data_file_studies GET    /data_files/:data_file_id/studies(.:format)                                  studies#index
                          data_file_publications GET    /data_files/:data_file_id/publications(.:format)                             publications#index
                                data_file_events GET    /data_files/:data_file_id/events(.:format)                                   events#index
                                      data_files GET    /data_files(.:format)                                                        data_files#index
                                                 POST   /data_files(.:format)                                                        data_files#create
                                   new_data_file GET    /data_files/new(.:format)                                                    data_files#new
                                  edit_data_file GET    /data_files/:id/edit(.:format)                                               data_files#edit
                                       data_file GET    /data_files/:id(.:format)                                                    data_files#show
                                                 PUT    /data_files/:id(.:format)                                                    data_files#update
                                                 DELETE /data_files/:id(.:format)                                                    data_files#destroy
                           preview_presentations GET    /presentations/preview(.:format)                                             presentations#preview
                    test_asset_url_presentations POST   /presentations/test_asset_url(.:format)                                      presentations#test_asset_url
                  items_for_result_presentations POST   /presentations/items_for_result(.:format)                                    presentations#items_for_result
                   resource_in_tab_presentations POST   /presentations/resource_in_tab(.:format)                                     presentations#resource_in_tab
                check_related_items_presentation POST   /presentations/:id/check_related_items(.:format)                             presentations#check_related_items
          check_gatekeeper_required_presentation POST   /presentations/:id/check_gatekeeper_required(.:format)                       presentations#check_gatekeeper_required
                           download_presentation GET    /presentations/:id/download(.:format)                                        presentations#download
                          published_presentation GET    /presentations/:id/published(.:format)                                       presentations#published
              publish_related_items_presentation POST   /presentations/:id/publish_related_items(.:format)                           presentations#publish_related_items
                            publish_presentation POST   /presentations/:id/publish(.:format)                                         presentations#publish
                   request_resource_presentation POST   /presentations/:id/request_resource(.:format)                                presentations#request_resource
            update_annotations_ajax_presentation POST   /presentations/:id/update_annotations_ajax(.:format)                         presentations#update_annotations_ajax
                        new_version_presentation POST   /presentations/:id/new_version(.:format)                                     presentations#new_version
                    destroy_version_presentation POST   /presentations/:id/destroy_version(.:format)                                 presentations#destroy_version
      view_pdf_content_presentation_content_blob GET    /presentations/:presentation_id/content_blobs/:id/view_pdf_content(.:format) content_blobs#view_pdf_content
               get_pdf_presentation_content_blob GET    /presentations/:presentation_id/content_blobs/:id/get_pdf(.:format)          content_blobs#get_pdf
              download_presentation_content_blob GET    /presentations/:presentation_id/content_blobs/:id/download(.:format)         content_blobs#download
                      presentation_content_blobs GET    /presentations/:presentation_id/content_blobs(.:format)                      content_blobs#index
                                                 POST   /presentations/:presentation_id/content_blobs(.:format)                      content_blobs#create
                   new_presentation_content_blob GET    /presentations/:presentation_id/content_blobs/new(.:format)                  content_blobs#new
                  edit_presentation_content_blob GET    /presentations/:presentation_id/content_blobs/:id/edit(.:format)             content_blobs#edit
                       presentation_content_blob GET    /presentations/:presentation_id/content_blobs/:id(.:format)                  content_blobs#show
                                                 PUT    /presentations/:presentation_id/content_blobs/:id(.:format)                  content_blobs#update
                                                 DELETE /presentations/:presentation_id/content_blobs/:id(.:format)                  content_blobs#destroy
                             presentation_people GET    /presentations/:presentation_id/people(.:format)                             people#index
                           presentation_projects GET    /presentations/:presentation_id/projects(.:format)                           projects#index
                       presentation_publications GET    /presentations/:presentation_id/publications(.:format)                       publications#index
                             presentation_events GET    /presentations/:presentation_id/events(.:format)                             events#index
                                   presentations GET    /presentations(.:format)                                                     presentations#index
                                                 POST   /presentations(.:format)                                                     presentations#create
                                new_presentation GET    /presentations/new(.:format)                                                 presentations#new
                               edit_presentation GET    /presentations/:id/edit(.:format)                                            presentations#edit
                                    presentation GET    /presentations/:id(.:format)                                                 presentations#show
                                                 PUT    /presentations/:id(.:format)                                                 presentations#update
                                                 DELETE /presentations/:id(.:format)                                                 presentations#destroy
                                    build_models GET    /models/build(.:format)                                                      models#build
                                  preview_models GET    /models/preview(.:format)                                                    models#preview
                           test_asset_url_models POST   /models/test_asset_url(.:format)                                             models#test_asset_url
                         items_for_result_models POST   /models/items_for_result(.:format)                                           models#items_for_result
                          resource_in_tab_models POST   /models/resource_in_tab(.:format)                                            models#resource_in_tab
                          compare_versions_model GET    /models/:id/compare_versions(.:format)                                       models#compare_versions
                                                 POST   /models/:id/compare_versions(.:format)                                       models#compare_versions
                                   builder_model GET    /models/:id/builder(.:format)                                                models#builder
                       check_related_items_model POST   /models/:id/check_related_items(.:format)                                    models#check_related_items
                                 visualise_model GET    /models/:id/visualise(.:format)                                              models#visualise
                 check_gatekeeper_required_model POST   /models/:id/check_gatekeeper_required(.:format)                              models#check_gatekeeper_required
                                  download_model GET    /models/:id/download(.:format)                                               models#download
                             matching_data_model GET    /models/:id/matching_data(.:format)                                          models#matching_data
                                 published_model GET    /models/:id/published(.:format)                                              models#published
                     publish_related_items_model POST   /models/:id/publish_related_items(.:format)                                  models#publish_related_items
                             submit_to_jws_model POST   /models/:id/submit_to_jws(.:format)                                          models#submit_to_jws
                               new_version_model POST   /models/:id/new_version(.:format)                                            models#new_version
                        submit_to_sycamore_model POST   /models/:id/submit_to_sycamore(.:format)                                     models#submit_to_sycamore
                           export_as_xgmml_model POST   /models/:id/export_as_xgmml(.:format)                                        models#export_as_xgmml
                   update_annotations_ajax_model POST   /models/:id/update_annotations_ajax(.:format)                                models#update_annotations_ajax
                                  simulate_model POST   /models/:id/simulate(.:format)                                               models#simulate
                                   publish_model POST   /models/:id/publish(.:format)                                                models#publish
                                   execute_model POST   /models/:id/execute(.:format)                                                models#execute
                          request_resource_model POST   /models/:id/request_resource(.:format)                                       models#request_resource
                           destroy_version_model POST   /models/:id/destroy_version(.:format)                                        models#destroy_version
                              model_model_images POST   /models/:model_id/model_images(.:format)                                     model_images#new
                        select_model_model_image POST   /models/:model_id/model_images/:id/select(.:format)                          model_images#select
                                                 GET    /models/:model_id/model_images(.:format)                                     model_images#index
                                                 POST   /models/:model_id/model_images(.:format)                                     model_images#create
                           new_model_model_image GET    /models/:model_id/model_images/new(.:format)                                 model_images#new
                          edit_model_model_image GET    /models/:model_id/model_images/:id/edit(.:format)                            model_images#edit
                               model_model_image GET    /models/:model_id/model_images/:id(.:format)                                 model_images#show
                                                 PUT    /models/:model_id/model_images/:id(.:format)                                 model_images#update
                                                 DELETE /models/:model_id/model_images/:id(.:format)                                 model_images#destroy
             view_pdf_content_model_content_blob GET    /models/:model_id/content_blobs/:id/view_pdf_content(.:format)               content_blobs#view_pdf_content
                      get_pdf_model_content_blob GET    /models/:model_id/content_blobs/:id/get_pdf(.:format)                        content_blobs#get_pdf
                     download_model_content_blob GET    /models/:model_id/content_blobs/:id/download(.:format)                       content_blobs#download
                             model_content_blobs GET    /models/:model_id/content_blobs(.:format)                                    content_blobs#index
                                                 POST   /models/:model_id/content_blobs(.:format)                                    content_blobs#create
                          new_model_content_blob GET    /models/:model_id/content_blobs/new(.:format)                                content_blobs#new
                         edit_model_content_blob GET    /models/:model_id/content_blobs/:id/edit(.:format)                           content_blobs#edit
                              model_content_blob GET    /models/:model_id/content_blobs/:id(.:format)                                content_blobs#show
                                                 PUT    /models/:model_id/content_blobs/:id(.:format)                                content_blobs#update
                                                 DELETE /models/:model_id/content_blobs/:id(.:format)                                content_blobs#destroy
                                    model_people GET    /models/:model_id/people(.:format)                                           people#index
                                  model_projects GET    /models/:model_id/projects(.:format)                                         projects#index
                            model_investigations GET    /models/:model_id/investigations(.:format)                                   investigations#index
                                    model_assays GET    /models/:model_id/assays(.:format)                                           assays#index
                                   model_studies GET    /models/:model_id/studies(.:format)                                          studies#index
                              model_publications GET    /models/:model_id/publications(.:format)                                     publications#index
                                    model_events GET    /models/:model_id/events(.:format)                                           events#index
                                          models GET    /models(.:format)                                                            models#index
                                                 POST   /models(.:format)                                                            models#create
                                       new_model GET    /models/new(.:format)                                                        models#new
                                      edit_model GET    /models/:id/edit(.:format)                                                   models#edit
                                           model GET    /models/:id(.:format)                                                        models#show
                                                 PUT    /models/:id(.:format)                                                        models#update
                                                 DELETE /models/:id(.:format)                                                        models#destroy
                                    preview_sops GET    /sops/preview(.:format)                                                      sops#preview
                             test_asset_url_sops POST   /sops/test_asset_url(.:format)                                               sops#test_asset_url
                           items_for_result_sops POST   /sops/items_for_result(.:format)                                             sops#items_for_result
                            resource_in_tab_sops POST   /sops/resource_in_tab(.:format)                                              sops#resource_in_tab
                         check_related_items_sop POST   /sops/:id/check_related_items(.:format)                                      sops#check_related_items
                   check_gatekeeper_required_sop POST   /sops/:id/check_gatekeeper_required(.:format)                                sops#check_gatekeeper_required
                                    download_sop GET    /sops/:id/download(.:format)                                                 sops#download
                                   published_sop GET    /sops/:id/published(.:format)                                                sops#published
                       publish_related_items_sop POST   /sops/:id/publish_related_items(.:format)                                    sops#publish_related_items
                                     publish_sop POST   /sops/:id/publish(.:format)                                                  sops#publish
                            request_resource_sop POST   /sops/:id/request_resource(.:format)                                         sops#request_resource
                     update_annotations_ajax_sop POST   /sops/:id/update_annotations_ajax(.:format)                                  sops#update_annotations_ajax
                                 new_version_sop POST   /sops/:id/new_version(.:format)                                              sops#new_version
                             destroy_version_sop POST   /sops/:id/destroy_version(.:format)                                          sops#destroy_version
create_from_existing_sop_experimental_conditions POST   /sops/:sop_id/experimental_conditions/create_from_existing(.:format)         experimental_conditions#create_from_existing
                     sop_experimental_conditions GET    /sops/:sop_id/experimental_conditions(.:format)                              experimental_conditions#index
                                                 POST   /sops/:sop_id/experimental_conditions(.:format)                              experimental_conditions#create
                  new_sop_experimental_condition GET    /sops/:sop_id/experimental_conditions/new(.:format)                          experimental_conditions#new
                 edit_sop_experimental_condition GET    /sops/:sop_id/experimental_conditions/:id/edit(.:format)                     experimental_conditions#edit
                      sop_experimental_condition GET    /sops/:sop_id/experimental_conditions/:id(.:format)                          experimental_conditions#show
                                                 PUT    /sops/:sop_id/experimental_conditions/:id(.:format)                          experimental_conditions#update
                                                 DELETE /sops/:sop_id/experimental_conditions/:id(.:format)                          experimental_conditions#destroy
               view_pdf_content_sop_content_blob GET    /sops/:sop_id/content_blobs/:id/view_pdf_content(.:format)                   content_blobs#view_pdf_content
                        get_pdf_sop_content_blob GET    /sops/:sop_id/content_blobs/:id/get_pdf(.:format)                            content_blobs#get_pdf
                       download_sop_content_blob GET    /sops/:sop_id/content_blobs/:id/download(.:format)                           content_blobs#download
                               sop_content_blobs GET    /sops/:sop_id/content_blobs(.:format)                                        content_blobs#index
                                                 POST   /sops/:sop_id/content_blobs(.:format)                                        content_blobs#create
                            new_sop_content_blob GET    /sops/:sop_id/content_blobs/new(.:format)                                    content_blobs#new
                           edit_sop_content_blob GET    /sops/:sop_id/content_blobs/:id/edit(.:format)                               content_blobs#edit
                                sop_content_blob GET    /sops/:sop_id/content_blobs/:id(.:format)                                    content_blobs#show
                                                 PUT    /sops/:sop_id/content_blobs/:id(.:format)                                    content_blobs#update
                                                 DELETE /sops/:sop_id/content_blobs/:id(.:format)                                    content_blobs#destroy
                                      sop_people GET    /sops/:sop_id/people(.:format)                                               people#index
                                    sop_projects GET    /sops/:sop_id/projects(.:format)                                             projects#index
                              sop_investigations GET    /sops/:sop_id/investigations(.:format)                                       investigations#index
                                      sop_assays GET    /sops/:sop_id/assays(.:format)                                               assays#index
                                     sop_studies GET    /sops/:sop_id/studies(.:format)                                              studies#index
                                sop_publications GET    /sops/:sop_id/publications(.:format)                                         publications#index
                                      sop_events GET    /sops/:sop_id/events(.:format)                                               events#index
                                            sops GET    /sops(.:format)                                                              sops#index
                                                 POST   /sops(.:format)                                                              sops#create
                                         new_sop GET    /sops/new(.:format)                                                          sops#new
                                        edit_sop GET    /sops/:id/edit(.:format)                                                     sops#edit
                                             sop GET    /sops/:id(.:format)                                                          sops#show
                                                 PUT    /sops/:id(.:format)                                                          sops#update
                                                 DELETE /sops/:id(.:format)                                                          sops#destroy
                       examine_url_content_blobs POST   /content_blobs/examine_url(.:format)                                         content_blobs#examine_url
                                new_content_blob GET    /content_blobs/new(.:format)                                                 content_blobs#new
                               edit_content_blob GET    /content_blobs/:id/edit(.:format)                                            content_blobs#edit
                         select_programme_avatar POST   /programmes/:programme_id/avatars/:id/select(.:format)                       avatars#select
                               programme_avatars GET    /programmes/:programme_id/avatars(.:format)                                  avatars#index
                                                 POST   /programmes/:programme_id/avatars(.:format)                                  avatars#create
                            new_programme_avatar GET    /programmes/:programme_id/avatars/new(.:format)                              avatars#new
                           edit_programme_avatar GET    /programmes/:programme_id/avatars/:id/edit(.:format)                         avatars#edit
                                programme_avatar GET    /programmes/:programme_id/avatars/:id(.:format)                              avatars#show
                                                 PUT    /programmes/:programme_id/avatars/:id(.:format)                              avatars#update
                                                 DELETE /programmes/:programme_id/avatars/:id(.:format)                              avatars#destroy
                     items_for_result_programmes POST   /programmes/items_for_result(.:format)                                       programmes#items_for_result
                initiate_spawn_project_programme GET    /programmes/:id/initiate_spawn_project(.:format)                             programmes#initiate_spawn_project
                         spawn_project_programme POST   /programmes/:id/spawn_project(.:format)                                      programmes#spawn_project
                                programme_people GET    /programmes/:programme_id/people(.:format)                                   people#index
                                                 POST   /programmes/:programme_id/people(.:format)                                   people#create
                            new_programme_person GET    /programmes/:programme_id/people/new(.:format)                               people#new
                           edit_programme_person GET    /programmes/:programme_id/people/:id/edit(.:format)                          people#edit
                                programme_person GET    /programmes/:programme_id/people/:id(.:format)                               people#show
                                                 PUT    /programmes/:programme_id/people/:id(.:format)                               people#update
                                                 DELETE /programmes/:programme_id/people/:id(.:format)                               people#destroy
                              programme_projects GET    /programmes/:programme_id/projects(.:format)                                 projects#index
                                                 POST   /programmes/:programme_id/projects(.:format)                                 projects#create
                           new_programme_project GET    /programmes/:programme_id/projects/new(.:format)                             projects#new
                          edit_programme_project GET    /programmes/:programme_id/projects/:id/edit(.:format)                        projects#edit
                               programme_project GET    /programmes/:programme_id/projects/:id(.:format)                             projects#show
                                                 PUT    /programmes/:programme_id/projects/:id(.:format)                             projects#update
                                                 DELETE /programmes/:programme_id/projects/:id(.:format)                             projects#destroy
                          programme_institutions GET    /programmes/:programme_id/institutions(.:format)                             institutions#index
                                                 POST   /programmes/:programme_id/institutions(.:format)                             institutions#create
                       new_programme_institution GET    /programmes/:programme_id/institutions/new(.:format)                         institutions#new
                      edit_programme_institution GET    /programmes/:programme_id/institutions/:id/edit(.:format)                    institutions#edit
                           programme_institution GET    /programmes/:programme_id/institutions/:id(.:format)                         institutions#show
                                                 PUT    /programmes/:programme_id/institutions/:id(.:format)                         institutions#update
                                                 DELETE /programmes/:programme_id/institutions/:id(.:format)                         institutions#destroy
                                      programmes GET    /programmes(.:format)                                                        programmes#index
                                                 POST   /programmes(.:format)                                                        programmes#create
                                   new_programme GET    /programmes/new(.:format)                                                    programmes#new
                                  edit_programme GET    /programmes/:id/edit(.:format)                                               programmes#edit
                                       programme GET    /programmes/:id(.:format)                                                    programmes#show
                                                 PUT    /programmes/:id(.:format)                                                    programmes#update
                                                 DELETE /programmes/:id(.:format)                                                    programmes#destroy
                            preview_publications GET    /publications/preview(.:format)                                              publications#preview
                      fetch_preview_publications POST   /publications/fetch_preview(.:format)                                        publications#fetch_preview
                   items_for_result_publications POST   /publications/items_for_result(.:format)                                     publications#items_for_result
                    resource_in_tab_publications POST   /publications/resource_in_tab(.:format)                                      publications#resource_in_tab
             update_annotations_ajax_publication POST   /publications/:id/update_annotations_ajax(.:format)                          publications#update_annotations_ajax
                disassociate_authors_publication POST   /publications/:id/disassociate_authors(.:format)                             publications#disassociate_authors
                              publication_people GET    /publications/:publication_id/people(.:format)                               people#index
                            publication_projects GET    /publications/:publication_id/projects(.:format)                             projects#index
                      publication_investigations GET    /publications/:publication_id/investigations(.:format)                       investigations#index
                              publication_assays GET    /publications/:publication_id/assays(.:format)                               assays#index
                             publication_studies GET    /publications/:publication_id/studies(.:format)                              studies#index
                              publication_models GET    /publications/:publication_id/models(.:format)                               models#index
                          publication_data_files GET    /publications/:publication_id/data_files(.:format)                           data_files#index
                              publication_events GET    /publications/:publication_id/events(.:format)                               events#index
                                    publications GET    /publications(.:format)                                                      publications#index
                                                 POST   /publications(.:format)                                                      publications#create
                                 new_publication GET    /publications/new(.:format)                                                  publications#new
                                edit_publication GET    /publications/:id/edit(.:format)                                             publications#edit
                                     publication GET    /publications/:id(.:format)                                                  publications#show
                                                 PUT    /publications/:id(.:format)                                                  publications#update
                                                 DELETE /publications/:id(.:format)                                                  publications#destroy
                                  preview_events GET    /events/preview(.:format)                                                    events#preview
                         items_for_result_events POST   /events/items_for_result(.:format)                                           events#items_for_result
                          resource_in_tab_events POST   /events/resource_in_tab(.:format)                                            events#resource_in_tab
                                    event_people GET    /events/:event_id/people(.:format)                                           people#index
                                  event_projects GET    /events/:event_id/projects(.:format)                                         projects#index
                                event_data_files GET    /events/:event_id/data_files(.:format)                                       data_files#index
                              event_publications GET    /events/:event_id/publications(.:format)                                     publications#index
                             event_presentations GET    /events/:event_id/presentations(.:format)                                    presentations#index
                                          events GET    /events(.:format)                                                            events#index
                                                 POST   /events(.:format)                                                            events#create
                                       new_event GET    /events/new(.:format)                                                        events#new
                                      edit_event GET    /events/:id/edit(.:format)                                                   events#edit
                                           event GET    /events/:id(.:format)                                                        events#show
                                                 PUT    /events/:id(.:format)                                                        events#update
                                                 DELETE /events/:id(.:format)                                                        events#destroy
                    preview_permissions_policies POST   /policies/preview_permissions(.:format)                                      policies#preview_permissions
                                        policies POST   /policies(.:format)                                                          policies#create
                                    new_policies GET    /policies/new(.:format)                                                      policies#new
                                   edit_policies GET    /policies/edit(.:format)                                                     policies#edit
                                                 GET    /policies(.:format)                                                          policies#show
                                                 PUT    /policies(.:format)                                                          policies#update
                                                 DELETE /policies(.:format)                                                          policies#destroy
                         spreadsheet_annotations POST   /spreadsheet_annotations(.:format)                                           spreadsheet_annotations#create
                          spreadsheet_annotation PUT    /spreadsheet_annotations/:id(.:format)                                       spreadsheet_annotations#update
                                                 DELETE /spreadsheet_annotations/:id(.:format)                                       spreadsheet_annotations#destroy
                      items_for_result_specimens POST   /specimens/items_for_result(.:format)                                        specimens#items_for_result
                               specimen_projects GET    /specimens/:specimen_id/projects(.:format)                                   projects#index
                                 specimen_people GET    /specimens/:specimen_id/people(.:format)                                     people#index
                                specimen_samples GET    /specimens/:specimen_id/samples(.:format)                                    samples#index
                                specimen_strains GET    /specimens/:specimen_id/strains(.:format)                                    strains#index
                           specimen_institutions GET    /specimens/:specimen_id/institutions(.:format)                               institutions#index
                                   specimen_sops GET    /specimens/:specimen_id/sops(.:format)                                       sops#index
       new_object_based_on_existing_one_specimen GET    /specimens/:id/new_object_based_on_existing_one(.:format)                    specimens#new_object_based_on_existing_one
                                       specimens GET    /specimens(.:format)                                                         specimens#index
                                                 POST   /specimens(.:format)                                                         specimens#create
                                    new_specimen GET    /specimens/new(.:format)                                                     specimens#new
                                   edit_specimen GET    /specimens/:id/edit(.:format)                                                specimens#edit
                                        specimen GET    /specimens/:id(.:format)                                                     specimens#show
                                                 PUT    /specimens/:id(.:format)                                                     specimens#update
                                                 DELETE /specimens/:id(.:format)                                                     specimens#destroy
                                 preview_samples GET    /samples/preview(.:format)                                                   samples#preview
                        items_for_result_samples POST   /samples/items_for_result(.:format)                                          samples#items_for_result
                         resource_in_tab_samples POST   /samples/resource_in_tab(.:format)                                           samples#resource_in_tab
         new_object_based_on_existing_one_sample GET    /samples/:id/new_object_based_on_existing_one(.:format)                      samples#new_object_based_on_existing_one
                                 sample_projects GET    /samples/:sample_id/projects(.:format)                                       projects#index
                                   sample_people GET    /samples/:sample_id/people(.:format)                                         people#index
                                sample_specimens GET    /samples/:sample_id/specimens(.:format)                                      specimens#index
                                     sample_sops GET    /samples/:sample_id/sops(.:format)                                           sops#index
                               sample_data_files GET    /samples/:sample_id/data_files(.:format)                                     data_files#index
                                         samples GET    /samples(.:format)                                                           samples#index
                                                 POST   /samples(.:format)                                                           samples#create
                                      new_sample GET    /samples/new(.:format)                                                       samples#new
                                     edit_sample GET    /samples/:id/edit(.:format)                                                  samples#edit
                                          sample GET    /samples/:id(.:format)                                                       samples#show
                                                 PUT    /samples/:id(.:format)                                                       samples#update
                                                 DELETE /samples/:id(.:format)                                                       samples#destroy
     existing_strains_for_assay_organism_strains GET    /strains/existing_strains_for_assay_organism(.:format)                       strains#existing_strains_for_assay_organism
                        items_for_result_strains POST   /strains/items_for_result(.:format)                                          strains#items_for_result
                         resource_in_tab_strains POST   /strains/resource_in_tab(.:format)                                           strains#resource_in_tab
                  update_annotations_ajax_strain POST   /strains/:id/update_annotations_ajax(.:format)                               strains#update_annotations_ajax
                                strain_specimens GET    /strains/:strain_id/specimens(.:format)                                      specimens#index
                                   strain_assays GET    /strains/:strain_id/assays(.:format)                                         assays#index
                                   strain_people GET    /strains/:strain_id/people(.:format)                                         people#index
                                 strain_projects GET    /strains/:strain_id/projects(.:format)                                       projects#index
                                         strains GET    /strains(.:format)                                                           strains#index
                                                 POST   /strains(.:format)                                                           strains#create
                                      new_strain GET    /strains/new(.:format)                                                       strains#new
                                     edit_strain GET    /strains/:id/edit(.:format)                                                  strains#edit
                                          strain GET    /strains/:id(.:format)                                                       strains#show
                                                 PUT    /strains/:id(.:format)                                                       strains#update
                                                 DELETE /strains/:id(.:format)                                                       strains#destroy
                     existing_strains_biosamples GET    /biosamples/existing_strains(.:format)                                       biosamples#existing_strains
                   existing_specimens_biosamples GET    /biosamples/existing_specimens(.:format)                                     biosamples#existing_specimens
         strains_of_selected_organism_biosamples GET    /biosamples/strains_of_selected_organism(.:format)                           biosamples#strains_of_selected_organism
                     existing_samples_biosamples GET    /biosamples/existing_samples(.:format)                                       biosamples#existing_samples
                                      biosamples GET    /biosamples(.:format)                                                        biosamples#index
                                                 POST   /biosamples(.:format)                                                        biosamples#create
                                   new_biosample GET    /biosamples/new(.:format)                                                    biosamples#new
                                  edit_biosample GET    /biosamples/:id/edit(.:format)                                               biosamples#edit
                                       biosample GET    /biosamples/:id(.:format)                                                    biosamples#show
                                                 PUT    /biosamples/:id(.:format)                                                    biosamples#update
                                                 DELETE /biosamples/:id(.:format)                                                    biosamples#destroy
                           search_ajax_organisms POST   /organisms/search_ajax(.:format)                                             organisms#search_ajax
                       resource_in_tab_organisms POST   /organisms/resource_in_tab(.:format)                                         organisms#resource_in_tab
                               organism_projects GET    /organisms/:organism_id/projects(.:format)                                   projects#index
                                 organism_assays GET    /organisms/:organism_id/assays(.:format)                                     assays#index
                                organism_studies GET    /organisms/:organism_id/studies(.:format)                                    studies#index
                                 organism_models GET    /organisms/:organism_id/models(.:format)                                     models#index
                                organism_strains GET    /organisms/:organism_id/strains(.:format)                                    strains#index
                              organism_specimens GET    /organisms/:organism_id/specimens(.:format)                                  specimens#index
                              visualise_organism GET    /organisms/:id/visualise(.:format)                                           organisms#visualise
                                       organisms GET    /organisms(.:format)                                                         organisms#index
                                                 POST   /organisms(.:format)                                                         organisms#create
                                    new_organism GET    /organisms/new(.:format)                                                     organisms#new
                                   edit_organism GET    /organisms/:id/edit(.:format)                                                organisms#edit
                                        organism GET    /organisms/:id(.:format)                                                     organisms#show
                                                 PUT    /organisms/:id(.:format)                                                     organisms#update
                                                 DELETE /organisms/:id(.:format)                                                     organisms#destroy
                           tissue_and_cell_types GET    /tissue_and_cell_types(.:format)                                             tissue_and_cell_types#index
                                                 POST   /tissue_and_cell_types(.:format)                                             tissue_and_cell_types#create
                        new_tissue_and_cell_type GET    /tissue_and_cell_types/new(.:format)                                         tissue_and_cell_types#new
                       edit_tissue_and_cell_type GET    /tissue_and_cell_types/:id/edit(.:format)                                    tissue_and_cell_types#edit
                            tissue_and_cell_type GET    /tissue_and_cell_types/:id(.:format)                                         tissue_and_cell_types#show
                                                 PUT    /tissue_and_cell_types/:id(.:format)                                         tissue_and_cell_types#update
                                                 DELETE /tissue_and_cell_types/:id(.:format)                                         tissue_and_cell_types#destroy
                                      statistics GET    /statistics(.:format)                                                        statistics#index
                        test_asset_url_workflows POST   /workflows/test_asset_url(.:format)                                          workflows#test_asset_url
                               download_workflow GET    /workflows/:id/download(.:format)                                            workflows#download
                         describe_ports_workflow GET    /workflows/:id/describe_ports(.:format)                                      workflows#describe_ports
                              temp_link_workflow POST   /workflows/:id/temp_link(.:format)                                           workflows#temp_link
                            new_version_workflow POST   /workflows/:id/new_version(.:format)                                         workflows#new_version
                update_annotations_ajax_workflow POST   /workflows/:id/update_annotations_ajax(.:format)                             workflows#update_annotations_ajax
                    check_related_items_workflow POST   /workflows/:id/check_related_items(.:format)                                 workflows#check_related_items
                                publish_workflow POST   /workflows/:id/publish(.:format)                                             workflows#publish
                              published_workflow GET    /workflows/:id/published(.:format)                                           workflows#published
                              favourite_workflow POST   /workflows/:id/favourite(.:format)                                           workflows#favourite
                       favourite_delete_workflow DELETE /workflows/:id/favourite_delete(.:format)                                    workflows#favourite_delete
                                   workflow_runs GET    /workflows/:workflow_id/runs(.:format)                                       taverna_player/runs#index
                                                 POST   /workflows/:workflow_id/runs(.:format)                                       taverna_player/runs#create
                                new_workflow_run GET    /workflows/:workflow_id/runs/new(.:format)                                   taverna_player/runs#new
                               edit_workflow_run GET    /workflows/:workflow_id/runs/:id/edit(.:format)                              taverna_player/runs#edit
                                    workflow_run GET    /workflows/:workflow_id/runs/:id(.:format)                                   taverna_player/runs#show
                                                 PUT    /workflows/:workflow_id/runs/:id(.:format)                                   taverna_player/runs#update
                                                 DELETE /workflows/:workflow_id/runs/:id(.:format)                                   taverna_player/runs#destroy
                                       workflows GET    /workflows(.:format)                                                         workflows#index
                                                 POST   /workflows(.:format)                                                         workflows#create
                                    new_workflow GET    /workflows/new(.:format)                                                     workflows#new
                                   edit_workflow GET    /workflows/:id/edit(.:format)                                                workflows#edit
                                        workflow GET    /workflows/:id(.:format)                                                     workflows#show
                                                 PUT    /workflows/:id(.:format)                                                     workflows#update
                                                 DELETE /workflows/:id(.:format)                                                     workflows#destroy
                              report_problem_run POST   /runs/:id/report_problem(.:format)                                           taverna_player/runs#report_problem
                                        edit_run GET    /runs/:id/edit(.:format)                                                     taverna_player/runs#edit
                                             run PUT    /runs/:id(.:format)                                                          taverna_player/runs#update
                               group_memberships GET    /group_memberships(.:format)                                                 group_memberships#index
                                                 POST   /group_memberships(.:format)                                                 group_memberships#create
                            new_group_membership GET    /group_memberships/new(.:format)                                             group_memberships#new
                           edit_group_membership GET    /group_memberships/:id/edit(.:format)                                        group_memberships#edit
                                group_membership GET    /group_memberships/:id(.:format)                                             group_memberships#show
                                                 PUT    /group_memberships/:id(.:format)                                             group_memberships#update
                                                 DELETE /group_memberships/:id(.:format)                                             group_memberships#destroy
                                    cancel_sweep PUT    /sweeps/:id/cancel(.:format)                                                 sweeps#cancel
                                      runs_sweep GET    /sweeps/:id/runs(.:format)                                                   sweeps#runs
                          download_results_sweep POST   /sweeps/:id/download_results(.:format)                                       sweeps#download_results
                               view_result_sweep GET    /sweeps/:id/view_result(.:format)                                            sweeps#view_result
                                          sweeps GET    /sweeps(.:format)                                                            sweeps#index
                                                 POST   /sweeps(.:format)                                                            sweeps#create
                                       new_sweep GET    /sweeps/new(.:format)                                                        sweeps#new
                                      edit_sweep GET    /sweeps/:id/edit(.:format)                                                   sweeps#edit
                                           sweep GET    /sweeps/:id(.:format)                                                        sweeps#show
                                                 PUT    /sweeps/:id(.:format)                                                        sweeps#update
                                                 DELETE /sweeps/:id(.:format)                                                        sweeps#destroy
                                     assay_types GET    /assay_types(.:format)                                                       assay_types#show
                        modelling_analysis_types GET    /modelling_analysis_types(.:format)                                          assay_types#show
                                technology_types GET    /technology_types(.:format)                                                  technology_types#show
                                                 GET    /statistics(.:format)                                                        statistics#index
                                          search        /search(.:format)                                                            search#index
                                     save_search        /search/save(.:format)                                                       search#save
                                   delete_search        /search/delete(.:format)                                                     search#delete
                         search_items_for_result POST   /search/items_for_result(.:format)                                           search#items_for_result
                                             svg        /svg/:id.:format                                                             svg#show
                                        all_tags        /tags(.:format)                                                              tags#index
                                        show_tag        /tags/:id(.:format)                                                          tags#show
                                        all_anns        /tags(.:format)                                                              tags#index
                                        show_ann        /tags/:id(.:format)                                                          tags#show
                                            jerm        /jerm(.:format)                                                              jerm#index
                                            jerm        /jerm/fetch(.:format)                                                        jerm#fetch
                                         country        /countries/:country_name(.:format)                                           countries#show
                                       data_fuse        /data_fuse(.:format)                                                         data_fuse#show
                             new_favourite_group POST   /favourite_groups/new(.:format)                                              favourite_groups#new
                          create_favourite_group POST   /favourite_groups/create(.:format)                                           favourite_groups#create
                            edit_favourite_group POST   /favourite_groups/edit(.:format)                                             favourite_groups#edit
                          update_favourite_group POST   /favourite_groups/update(.:format)                                           favourite_groups#update
                          delete_favourite_group DELETE /favourite_groups/:id(.:format)                                              favourite_groups#destroy
                        new_investigation_redbox POST   /studies/new_investigation_redbox(.:format)                                  studies#new_investigation_redbox
                            create_investigation POST   /experiments/create_investigation(.:format)                                  studies#create_investigation
                               review_work_group POST   /work_groups/review/:type/:id/:access_type(.:format)                         work_groups#review_popup
                          tool_list_autocomplete        /tool_list_autocomplete(.:format)                                            people#auto_complete_for_tools_name
                     expertise_list_autocomplete        /expertise_list_autocomplete(.:format)                                       people#auto_complete_for_expertise_name
                      organism_list_autocomplete        /organism_list_autocomplete(.:format)                                        projects#auto_complete_for_organism_name
                                                        /:controller/:id/approve_or_reject_publish(.:format)                         :controller#show
                                          signup        /signup(.:format)                                                            users#new
                                          logout        /logout(.:format)                                                            sessions#destroy
                                        activate        /activate/:activation_code(.:format)                                         users#activate {:activation_code=>nil}
                                 forgot_password        /forgot_password(.:format)                                                   users#forgot_password
                         request_policy_settings        /policies/request_settings(.:format)                                         policies#send_policy_data
                                            fail GET    /fail(.:format)                                                              fail#index
                                         contact GET    /contact(.:format)                                                           contact#index
                                        feedback GET    /home/feedback(.:format)                                                     homes#feedback
                     application_resource_in_tab        /application/resource_in_tab(.:format)                                       application#resource_in_tab
                                                        /404(.:format)                                                               errors#error_404
                                                        /422(.:format)                                                               errors#error_422
                                                        /500(.:format)                                                               errors#error_500
                                    participants GET    /participants(.:format)                                                      participants#index
                                                 POST   /participants(.:format)                                                      participants#create
                                 new_participant GET    /participants/new(.:format)                                                  participants#new
                                edit_participant GET    /participants/:id/edit(.:format)                                             participants#edit
                                     participant GET    /participants/:id(.:format)                                                  participants#show
                                                 PUT    /participants/:id(.:format)                                                  participants#update
                                                 DELETE /participants/:id(.:format)                                                  participants#destroy
                                    new_feedback        /new_feedback(.:format)                                                      new_feedbacks#new_feedback
                   frame_experiment_new_feedback PUT    /frame_experiment/new_feedback(.:format)                                     frame_experiment#new_feedback
                   frame_experiment_instructions PUT    /frame_experiment/instructions(.:format)                                     frame_experiment#instructions
                        frame_experiment_consent PUT    /frame_experiment/consent(.:format)                                          frame_experiment#consent
                        frame_experiment_debrief        /frame_experiment/debrief(.:format)                                          frame_experiment#debrief
                      frame_experiment_awareness PUT    /frame_experiment/awareness(.:format)                                        frame_experiment#awareness
                        frame_experiment_washout PUT    /frame_experiment/washout(.:format)                                          frame_experiment#washout
                  frame_experiment_usability_ask PUT    /frame_experiment/usability_ask(.:format)                                    frame_experiment#usability_ask
                          frame_experiment_index GET    /frame_experiment(.:format)                                                  frame_experiment#index
                                                 POST   /frame_experiment(.:format)                                                  frame_experiment#create
                            new_frame_experiment GET    /frame_experiment/new(.:format)                                              frame_experiment#new
                           edit_frame_experiment GET    /frame_experiment/:id/edit(.:format)                                         frame_experiment#edit
                                frame_experiment GET    /frame_experiment/:id(.:format)                                              frame_experiment#show
                                                 PUT    /frame_experiment/:id(.:format)                                              frame_experiment#update
                                                 DELETE /frame_experiment/:id(.:format)                                              frame_experiment#destroy
                         feed_site_announcements GET    /site_announcements/feed(.:format)                                           site_announcements#feed
        notification_settings_site_announcements GET    /site_announcements/notification_settings(.:format)                          site_announcements#notification_settings
 update_notification_settings_site_announcements POST   /site_announcements/update_notification_settings(.:format)                   site_announcements#update_notification_settings
                              site_announcements GET    /site_announcements(.:format)                                                site_announcements#index
                                                 POST   /site_announcements(.:format)                                                site_announcements#create
                           new_site_announcement GET    /site_announcements/new(.:format)                                            site_announcements#new
                          edit_site_announcement GET    /site_announcements/:id/edit(.:format)                                       site_announcements#edit
                               site_announcement GET    /site_announcements/:id(.:format)                                            site_announcements#show
                                                 PUT    /site_announcements/:id(.:format)                                            site_announcements#update
                                                 DELETE /site_announcements/:id(.:format)                                            site_announcements#destroy
                               forum_topic_posts GET    /forums/:forum_id/topics/:topic_id/posts(.:format)                           posts#index
                                                 POST   /forums/:forum_id/topics/:topic_id/posts(.:format)                           posts#create
                            new_forum_topic_post GET    /forums/:forum_id/topics/:topic_id/posts/new(.:format)                       posts#new
                           edit_forum_topic_post GET    /forums/:forum_id/topics/:topic_id/posts/:id/edit(.:format)                  posts#edit
                                forum_topic_post GET    /forums/:forum_id/topics/:topic_id/posts/:id(.:format)                       posts#show
                                                 PUT    /forums/:forum_id/topics/:topic_id/posts/:id(.:format)                       posts#update
                                                 DELETE /forums/:forum_id/topics/:topic_id/posts/:id(.:format)                       posts#destroy
                         forum_topic_monitorship POST   /forums/:forum_id/topics/:topic_id/monitorship(.:format)                     monitorships#create
                     new_forum_topic_monitorship GET    /forums/:forum_id/topics/:topic_id/monitorship/new(.:format)                 monitorships#new
                    edit_forum_topic_monitorship GET    /forums/:forum_id/topics/:topic_id/monitorship/edit(.:format)                monitorships#edit
                                                 GET    /forums/:forum_id/topics/:topic_id/monitorship(.:format)                     monitorships#show
                                                 PUT    /forums/:forum_id/topics/:topic_id/monitorship(.:format)                     monitorships#update
                                                 DELETE /forums/:forum_id/topics/:topic_id/monitorship(.:format)                     monitorships#destroy
                                    forum_topics GET    /forums/:forum_id/topics(.:format)                                           topics#index
                                                 POST   /forums/:forum_id/topics(.:format)                                           topics#create
                                 new_forum_topic GET    /forums/:forum_id/topics/new(.:format)                                       topics#new
                                edit_forum_topic GET    /forums/:forum_id/topics/:id/edit(.:format)                                  topics#edit
                                     forum_topic GET    /forums/:forum_id/topics/:id(.:format)                                       topics#show
                                                 PUT    /forums/:forum_id/topics/:id(.:format)                                       topics#update
                                                 DELETE /forums/:forum_id/topics/:id(.:format)                                       topics#destroy
                                          forums GET    /forums(.:format)                                                            forums#index
                                                 POST   /forums(.:format)                                                            forums#create
                                       new_forum GET    /forums/new(.:format)                                                        forums#new
                                      edit_forum GET    /forums/:id/edit(.:format)                                                   forums#edit
                                           forum GET    /forums/:id(.:format)                                                        forums#show
                                                 PUT    /forums/:id(.:format)                                                        forums#update
                                                 DELETE /forums/:id(.:format)                                                        forums#destroy
                                       all_posts GET    /posts(.:format)                                                             posts#index
                                search_all_posts GET    /posts/search(.:format)                                                      posts#search
                                           posts GET    /posts(.:format)                                                             posts#index
                                                 POST   /posts(.:format)                                                             posts#create
                                        new_post GET    /posts/new(.:format)                                                         posts#new
                                       edit_post GET    /posts/:id/edit(.:format)                                                    posts#edit
                                            post GET    /posts/:id(.:format)                                                         posts#show
                                                 PUT    /posts/:id(.:format)                                                         posts#update
                                                 DELETE /posts/:id(.:format)                                                         posts#destroy
                                     forum_posts GET    /posts(.:format)                                                             posts#index {:path_prefix=>"/forums/:forum_id"}
                                                 POST   /posts(.:format)                                                             posts#create {:path_prefix=>"/forums/:forum_id"}
                                  new_forum_post GET    /posts/new(.:format)                                                         posts#new {:path_prefix=>"/forums/:forum_id"}
                                 edit_forum_post GET    /posts/:id/edit(.:format)                                                    posts#edit {:path_prefix=>"/forums/:forum_id"}
                                      forum_post GET    /posts/:id(.:format)                                                         posts#show {:path_prefix=>"/forums/:forum_id"}
                                                 PUT    /posts/:id(.:format)                                                         posts#update {:path_prefix=>"/forums/:forum_id"}
                                                 DELETE /posts/:id(.:format)                                                         posts#destroy {:path_prefix=>"/forums/:forum_id"}
                                          topics GET    /topics(.:format)                                                            topics#index
                                                 POST   /topics(.:format)                                                            topics#create
                                       new_topic GET    /topics/new(.:format)                                                        topics#new
                                      edit_topic GET    /topics/:id/edit(.:format)                                                   topics#edit
                                           topic GET    /topics/:id(.:format)                                                        topics#show
                                                 PUT    /topics/:id(.:format)                                                        topics#update
                                                 DELETE /topics/:id(.:format)                                                        topics#destroy
                               monitorship_index GET    /monitorship(.:format)                                                       monitorship#index
                                                 POST   /monitorship(.:format)                                                       monitorship#create
                                 new_monitorship GET    /monitorship/new(.:format)                                                   monitorship#new
                                edit_monitorship GET    /monitorship/:id/edit(.:format)                                              monitorship#edit
                                     monitorship GET    /monitorship/:id(.:format)                                                   monitorship#show
                                                 PUT    /monitorship/:id(.:format)                                                   monitorship#update
                                                 DELETE /monitorship/:id(.:format)                                                   monitorship#destroy

Routes for TavernaPlayer::Engine:
             cancel_run PUT    /runs/:id/cancel(.:format)                    taverna_player/runs#cancel
                        GET    /runs/:id/input/:port(.:format)               taverna_player/runs#input
                        GET    /runs/:id/output/:port(/*path)(.:format)      taverna_player/runs#output
                log_run GET    /runs/:id/download/log(.:format)              taverna_player/runs#download_log
            results_run GET    /runs/:id/download/results(.:format)          taverna_player/runs#download_results
                        GET    /runs/:id/download/input/:port(.:format)      taverna_player/runs#download_input
                        GET    /runs/:id/download/output/:port(.:format)     taverna_player/runs#download_output
                        GET    /runs/:id/interaction/:serial(.:format)       taverna_player/runs#read_interaction
                        POST   /runs/:id/interaction/:serial(.:format)       taverna_player/runs#write_interaction
                   runs GET    /runs(.:format)                               taverna_player/runs#index
                        POST   /runs(.:format)                               taverna_player/runs#create
                new_run GET    /runs/new(.:format)                           taverna_player/runs#new
                    run GET    /runs/:id(.:format)                           taverna_player/runs#show
                        PUT    /runs/:id(.:format)                           taverna_player/runs#update
                        DELETE /runs/:id(.:format)                           taverna_player/runs#destroy
    service_credentials GET    /admin/service_credentials(.:format)          taverna_player/service_credentials#index
                        POST   /admin/service_credentials(.:format)          taverna_player/service_credentials#create
 new_service_credential GET    /admin/service_credentials/new(.:format)      taverna_player/service_credentials#new
edit_service_credential GET    /admin/service_credentials/:id/edit(.:format) taverna_player/service_credentials#edit
     service_credential GET    /admin/service_credentials/:id(.:format)      taverna_player/service_credentials#show
                        PUT    /admin/service_credentials/:id(.:format)      taverna_player/service_credentials#update
                        DELETE /admin/service_credentials/:id(.:format)      taverna_player/service_credentials#destroy
              job_queue GET    /admin/job_queue(.:format)                    taverna_player/job_queue#index
