module PKB
  module Clinician
    module Patients
      def patients
        response = self.class.get('/json/v1/users/self/patients', :headers => headers)
        response["results"].map do |result|
          PKB::Models::Patient.new(result)
        end
      end
    end
  end
end
