require 'spec_helper'

describe PKB::ClinicianClient do

  describe "when attempting to connect to PKB" do
    describe "with bearer token" do
      describe "when connected" do
        before {
          @client = PKB::ClinicianClient.connect(:test => true)
        }

        it "should be able to list patients" do
          @client.patients
        end

        it "should be able to list my colleagues" do
          @client.colleagues
        end

      end
    end
  end

end
