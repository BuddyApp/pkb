module PKB
  module Proxy
    class Measurement
      instance_methods.each { |m| undef_method m unless m =~ /(^__|^send$|^object_id$)/ }

      attr_accessor :connection_object

      def initialize(obj)
        self.connection_object = obj
      end

      def all
        response = connection_object.class.get('/json/v1/measurements/all', :headers => connection_object.headers)
        response.parsed_response["results"].map do |res|
          PKB::Models::Measurement.new(res)
        end
      end

      protected

      def method_missing(name, *args, &block)
        target.send(name, *args, &block)
      end

      def target
        @target ||= []
      end

    end
  end
end
