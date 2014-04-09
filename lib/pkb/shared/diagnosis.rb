module PKB
  module Shared
    module Diagnosis
      def diagnosis
        response = self.class.get('/json/v1/diagnoses/all', :headers => headers)
        PKB::Models::Diagnosis.new(response.parsed_response)
      end
    end
  end
end
