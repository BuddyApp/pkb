module PKB
  module Clinician
    module Patients
      def patients
        self.class.get('/rest/v1/users/self/patients', :headers => headers)
      end
    end
  end
end
