module Validators
    def self.validate_input(welcome_and_user_input_gender)
        # convert input to string
        str_input = welcome_and_user_input_gender
        puts str_input
        if str_input != "F" && str_input != "M" && str_input != "O"
            puts"yessss"
            return false
        # if user input == F, M or O return true
        # else return false

        else
            return true
        end
    
    end

    # def self.validate_input(user_age_input)
    #     #validates users age and checks if 18 or over. The legal age considering adult themes associated with dating apps.
    #     int_input = user_age_input
    #     if (int_input < 18)
    #         return false
    #         puts "You must be at least 18 to use this app"
    #     if test
            
    #     elsif (int_input > 118)
    #         return false
    #         puts "Send in your Birth Cirtificfate and we'll update... as you're older than the oldest person ever!"
            
    #     else
    #         return true
    #     end
    # end

    # def self.validate_input(user_star_sign_input)
    #     str_star_sign = user_star_sign_input
    #     if (str_star_sign != "Aries" || str_star_sign != "Taurus" || str_star_sign != "Gemini" || str_star_sign != "Cancer" || str_star_sign != "Leo" || str_star_sign != "Virgo" || str_star_sign != "Libra" || str_star_sign != "Scorpio" || str_star_sign != "Sagittarius" || str_star_sign != "Capricorn" || str_star_sign != "Aquarius" || str_star_sign != "Pisces")
    #         return false
    #         puts "Invalid. Please type your star sign."
    #     else
    #         return true
    #     end
    # end
        

    # def Validators.validate_input(welcome_and_user_input_gender)
    # def Validators.validate_input(user_age_input)
    # def Validators.validate_input(user_star_sign_input)
end
