module PKB
  class Patient
    attr_accessor :id,
    :state,
    :country,
    :first_name,
    :last_name,
    :title,
    :address1,
    :address2,
    :city,
    :postal_code,
    :dob,
    :dob_iso,
    :organization_name,
    :email,
    :job_title,
    :gender_mf,
    :team_name,
    :weight_kg,
    :weight_lbs,
    :height_feet,
    :height_inches,
    :height_inches_total,
    :height_cm,
    :patient

    def initialize(opts)
      opts.each do |k, v|
        self.send("#{k.underscore}=", v)
      end
    end

    def date_of_birth
    end

  end
end
