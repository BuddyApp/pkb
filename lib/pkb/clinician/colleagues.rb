module PKB
  module Clinician
    module Colleagues
      def colleagues
        response = self.class.get('/json/v1/users/self/colleagues', :headers => headers)
        response["results"].map do |result|
          PKB::Models::Clinician.new(result)
        end
      end
    end
  end
end
