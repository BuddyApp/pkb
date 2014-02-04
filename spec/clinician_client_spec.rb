require 'spec_helper'

describe PKB::ClinicianClient do

  describe "when attempting to connect to PKB" do
    describe "with bearer token" do
      it "should be able to connect" do
        @client = PKB::ClinicianClient.connect(:test => true)
      end
    end
  end

end
