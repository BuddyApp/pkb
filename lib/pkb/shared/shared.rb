require 'pkb/shared/diagnosis'

module PKB
  module Shared
    def self.included(base)
      base.class_eval do
        include PKB::Shared::Diagnosis
      end
    end
  end
end
