require 'rubygems'
require 'bundler'
Bundler.require(:default)
require 'httparty'
require 'active_support/core_ext/string'

require "pkb/version"
require "pkb/clinician_client"
require "pkb/patient_client"

require 'pkb/proxies/measurement'

require 'pkb/models/pkb_api'
require "pkb/models/patient"
require "pkb/models/diagnosis"
require "pkb/models/measurement"

module PKB
  class Config
    def self.host(test=false)
      if test
        "https://uat.patientsknowbest.com"
      else
        "https://my.patientsknowbest.com"
      end
    end
  end
end
