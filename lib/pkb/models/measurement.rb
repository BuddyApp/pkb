module PKB
  module Models
    class Measurement < PKBApi
      attr_accessor :id,
      :history,
      :name,
      :code,
      :api_ref,
      :code_system,
      :code_system_name,
      :category,
      :unit,
      :code2,
      :code_system2,
      :code_system_name2,
      :unit2
    end
  end
end
