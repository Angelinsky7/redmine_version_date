require_dependency "projects_helper"

module RedmineVersionDate
  module ProjectsHelperPatch
    def self.included(base)
      base.class_eval do

        def version_options_for_select_with_version(versions, selected=nil)
          grouped = Hash.new {|h,k| h[k] = []}
          versions.each do |version|
            grouped[version.project.name] << [version.caption, version.id]
          end
      
          selected = selected.is_a?(Version) ? selected.id : selected
          if grouped.keys.size > 1
            grouped_options_for_select(grouped, selected)
          else
            options_for_select((grouped.values.first || []), selected)
          end
        end
        alias_method :version_options_for_select_without_version, :version_options_for_select
        alias_method :version_options_for_select, :version_options_for_select_with_version

      end
    end
  end
end