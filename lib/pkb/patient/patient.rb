module PKB
  module Patient
    module Patient
      def myself
        response = self.class.get('/json/v1/users/self', :headers => headers)
        PKB::Models::Patient.new(response.parsed_response)
      end
    end
  end
end
