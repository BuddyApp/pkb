module PKB
  module Models
    class Diagnosis < PKBApi
      attr_accessor :id,
      :start_date,
      :end_date,
      :results
    end
  end
end
