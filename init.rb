Version.send(:include, RedmineVersionDate::VersionPatch)
ProjectsHelper.send(:include, RedmineVersionDate::ProjectsHelperPatch)

Redmine::Plugin.register :redmine_version_date do
  name 'Version with date'
  author 'Angelinsky7'
  description 'Show version in dropdown with a date when set'
  version '0.0.1'
  url 'https://github.com/Angelinsky7/redmine_version_date.git'
  author_url 'https://github.com/Angelinsky7/redmine_version_date.git' 
end
 