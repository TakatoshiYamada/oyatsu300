# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).

# --- root ---
# admin root crumb
crumb :admin_root do
  link t('.admin_root'), admin_root_path
end

# --- user ---
# users index
crumb :admin_users do
  link t('admin.users.index.title'), admin_users_path
end

# user new
crumb :new_admin_user do
  link t('admin.users.new.title'), new_admin_user_path
  parent :admin_users
end

# user show
crumb :admin_user do |user|
  link user.name, admin_user_path(user)
  parent :admin_users
end

# user edit
crumb :edit_admin_user do |user|
  link admin_user.name, edit_admin_user_path(admin_user)
  parent :admin_users
end

# --- ensoku ---
# ensoku_index
crumb :admin_ensokus do
  link t('admin.ensokus.index.title'), admin_ensokus_path
end

# ensoku show
crumb :admin_ensoku do |ensoku|
  link ensoku.id, admin_ensoku_path(ensoku)
  parent :admin_ensokus
end

# --- oyatsu ---
# oyatsus index
crumb :admin_oyatsus do
  link t('admin.oyatsus.index.title'), admin_oyatsus_path
end

# oyatsu new
crumb :new_admin_oyatsu do
  link t('admin.oyatsus.new.title'), new_admin_oyatsu_path
  parent :admin_oyatsus
end

# oyatsu show
crumb :admin_oyatsu do |oyatsu|
  link oyatsu.name, admin_oyatsu_path(oyatsu)
  parent :admin_oyatsus
end

# oyatsu edit
crumb :edit_admin_oyatsu do |oyatsu|
  link admin_oyatsu.name, edit_admin_oyatsu_path(admin_oyatsu)
  parent :admin_oyatsus
end

