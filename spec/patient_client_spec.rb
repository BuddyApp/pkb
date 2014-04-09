require 'spec_helper'

describe PKB::PatientClient do

  describe "when attempting to connect to PKB" do
    describe "with bearer token" do
      describe "when connected" do
        before {
          @client = PKB::PatientClient.connect(:test => true)
        }

        it "should be able to see my details" do
          @client.myself
        end

      end
    end
  end


end
