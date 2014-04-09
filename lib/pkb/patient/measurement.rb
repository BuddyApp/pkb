module PKB
  module Patient
    module Measurement
      def measurements
        PKB::Proxy::Measurement.new(self)
      end
    end
  end
end
