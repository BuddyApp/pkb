require 'pkb/clinician/patients'

module PKB
  class ClinicianClient
    include PKB::Clinician::Patients
    include HTTParty

    debug_output $stdout

    attr_reader :headers, :host

    def initialize(opts)
      @host = opts[:host]
      @headers = opts[:headers]
    end

    def self.connect(opts={})
      self.base_uri host = PKB::Config.host(opts[:test])
      headers = authenticate!(opts)
      instance = new(:headers => headers)
      instance.patients
    end

    def self.authenticate!(opts)
      if opts[:test]
        {"Authorization" => "Bearer testClinician"}
      end
    end
  end
end
