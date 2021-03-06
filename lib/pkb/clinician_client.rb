require 'pkb/shared/shared'
require 'pkb/clinician/patients'
require 'pkb/clinician/colleagues'


module PKB
  class ClinicianClient
    include HTTParty
    include PKB::Shared
    include PKB::Clinician::Patients
    include PKB::Clinician::Colleagues

    attr_reader :headers, :host

    def initialize(opts)
      @host = opts[:host]
      @headers = opts[:headers]
    end

    def self.connect(opts={})
      self.base_uri host = PKB::Config.host(opts[:test])
      headers = authenticate!(opts)
      instance = new(:headers => headers)
    end

    def self.authenticate!(opts)
      if opts[:test]
        {"Authorization" => "Bearer testClinician"}
      end
    end
  end
end
