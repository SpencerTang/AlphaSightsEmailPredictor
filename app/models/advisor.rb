class Advisor < ActiveRecord::Base

  def self.predict_email(hash)

    first_name = hash.values[0].strip.downcase
    last_name = hash.values[1].strip.downcase
    domain = hash.values[2].strip.downcase

    if domain == "alphasights.com"

      email = [first_name + "." + last_name + "@" + domain ]

    elsif domain == "google.com"

      option1 = first_name + "." + last_name[0] + "@" +  domain 

      option2 = first_name[0] + "." + last_name + "@" +  domain 

      emails = [option1, option2]

    elsif domain == "apple.com"

      email = [first_name[0] + "." +last_name[0] + "@" +  domain ]

    else
      []

    end

  end

end
