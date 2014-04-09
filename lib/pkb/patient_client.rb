require 'pkb/patient/patient'

module PKB
  class PatientClient
    include HTTParty
    include PKB::Patient::Patient

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
        {"Authorization" => "Bearer testPatient"}
      end
    end

  end
end
