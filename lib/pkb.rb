require 'rubygems'
require 'bundler'
Bundler.require(:default)
require 'httparty'

require "pkb/version"
require "pkb/clinician_client"
require "pkb/patient_client"

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
