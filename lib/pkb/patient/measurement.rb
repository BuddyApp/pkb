module PKB
  module Patient
    module Measurement
      def measurements(type=:all)
        # consider rewriting this as a proxy object
        if type == :all
          response = self.class.get('/json/v1/measurements/all', :headers => headers)
          response.parsed_response["results"].map do |res|
            puts res.inspect
            PKB::Models::Measurement.new(res)
          end
        end
      end
    end
  end
end
