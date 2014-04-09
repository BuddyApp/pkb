module PKB
  module Models
    class PKBApi
      def initialize(opts)
        opts.each do |k, v|
          self.send("#{k.underscore}=", v)
        end
      end
    end
  end
end
