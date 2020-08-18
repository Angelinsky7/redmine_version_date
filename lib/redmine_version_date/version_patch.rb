require_dependency "version"

module RedmineVersionDate
  module VersionPatch
    def self.included(base)
      base.class_eval do

        def caption()
            result = "#{name}"
            result += " (#{effective_date})" unless effective_date.nil?
            result
        end
        
      end
    end
  end
end