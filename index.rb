# require './validators'

system("clear")

def welcome_and_user_input
puts "\nListen up if you're looking to fall in love, you want to start dating or you're ready to start a relationship you're at the right place"
# Gets users gender so can be matched with someone of the opposite gender. Note MVP is not inclusive, it is purley for hetero singles.
puts = "Gender"
    puts"M"
    puts"F"
    puts"O"
    user_gender = gets.chomp
    user_gender.capitalize
    
    puts = "How old are you?"
    user_age = gets.chomp.to_i

    # age rule - algorithm based on men and woman identifying ages they would consider when evaluating someone for relationships
    user_age_rule_min = user_age / 2 + 7
    user_age_rule_max = user_age - 7 * 2

    # Gets users star sign
    puts "What is your star sign?"
    puts "Aries March 21 - April 19", "\n2. Taurus April 20 - May - 20", "\n3. Gemini May 21 - June 20", "\n4. Cancer June 21 - July 22", "\n5. Leo July 23 - August 22", "\n6. Virgo August 23 - September 22", "\n7. Libra September 23 - October 22", "\n8. Scorpio October 23 - November 21", "\n9. Sagittarius November 22 - December", "\n10. Capricorn December 22 - January 19", "\n11. Aquarius January 20 February 18", "\n12. Pisces February 19 - March 20"
    user_star_sign = gets.chomp.to_i

end

# Users' gender identified
case
when "M" [
    # Provides matches to opposite gender when user identifies as hetero male
    # Female profiles - one for each star sign, ages go up in incements of 10 starting at 18 (the legal age considerating adult themes associated with dating apps), stops at 118 (accounting for if the oldest person in the world was to be a user), then for remaining star sign takes average of the age group most on dating apps 30 - 44.
        {
            name: "Fiona",
            age: 18,
            star_sign: "Aries"
        },
        {
            name: "Mel",
            age: 28,
            star_sign: "Taurus"
        },
        {
            name: "Rachel",
            age: 38,
            star_sign: "Gemini"
        },
        {
            name: "Molly",
            age: 48,
            star_sign: "Cancer"
        },
        {
            name: "Isobel",
            age: 58,
            star_sign: "Leo"
        },
        {
            name: "Harriet",
            age: 68,
            star_sign: "Virgo"
        },
        {
            name: "Sophie",
            age: 78,
            star_sign: "Libra"
        },
        {
            name: "Kate",
            age: 88,
            star_sign: "Scorpio"
        },
        {
            name: "Donna",
            age: 98,
            star_sign: "Sagittarius"
        },
        {
            name: "Pheobe",
            age: 108,
            star_sign: "Capricorn"
        },
        {
            name: "Lola",
            age: 118,
            star_sign: "Aquarius"
        },
        {
            name: "Nina",
            age: 23,
            star_sign: "Pisces"
        }
    ]
    star_sign_matches = {
        "Taurus" => [
            "Cancer",
            "Scorpio",
            "Pisces"
        ],
        "Gemini" => [
            "Aries",
            "Leo",
            "Sagittarius"
        ],
        "Cancer" => [
            "Taurus",
            "Virgo",
            "Capricorn"
        ],
        "Leo" => [
            "Libra",
            "Gemini"
        ],
        "Virgo" => [
            "Scorpio",
            "Pisces"
        ],
        "Libra" => [
            "Leo",
            "Saggitarius"
        ],
        "Scorpio" => [
            "Cancer",
            "Virgo",
            "Capricorn",
            "Pisces"
        ],
        "Sagittarius" => [
            "Aries",
            "Leo",
            "Libra"
        ],
        "Capricorn" => [
            "Virgo",
            "Scorpio",
            "Pisces"
        ],
        "Aquarius" => [
            "Aries",
            "Sagittarius"
        ],
        "Pisces" => [
            "Taurus",
            "Capricorn"
        ]   
    }

    user_age = 40
    user_star_sign = "Taurus"
    user_star_sign_matches = star_sign_matches[user_star_sign]
    p user_star_sign_matches
    user_age_rule_min = (user_age / 2) + 7
    user_age_rule_max = (user_age - 7) * 2
    matched_profiles = female_profiles.filter do | female_profile |
        puts female_profile[:star_sign]
        # puts female_profile[:name]
        # puts female_profile[:age]
        # puts female_profile[:star_sign]
        age_match = female_profile[:age] >= user_age_rule_min && female_profile[:age] <= user_age_rule_max
        # star_sign_match = female_profile[:star_sign] == "Taurus"
        star_sign_match = user_star_sign_matches.include? female_profile[:star_sign]
        puts star_sign_match
       
        return age_match && star_sign_match

    
    end
    puts matched_profiles

    
    
    # User star sign identified and compared to romantically compatible star sign/signs and average age bracket people date between
    # if user_star_sign == "Aries" && user_age >= user_age_rule_min && user_age <= user_age_rule_max
    #     female_profiles["Libra"]
    #     puts "Yay! You've been matched with #{key}"
    
    # elsif user_star_sign == "Taurus"
    #     female_profiles["Cancer", "Scorpio", "Pisces"]
    
    # elsif user_star_sign == "Gemini"
    #     female_profiles["Aries", "Leo", "Sagittarius"]
    
    # elsif user_star_sign == "Cancer"
    #     female_profiles["Taurus", "Virgo", "Capricorn"]
    
    # elsif user_star_sign == "Leo"
    #     female_profiles["Libra", "Gemini"]
    
    # elsif user_star_sign == "Virgo"
    #     female_profiles["Scorpio", "Pisces"]
    
    # elsif user_star_sign == "Libra"
    #     female_profiles["Leo", "Sagittarius"]
    
    # elsif user_star_sign == "Scorpio"
    #     female_profiles["Cancer", "Virgo", "Capricorn", "Pisces"]
    
    # elsif user_star_sign == "Sagittarius"
    #     female_profiles["Aries", "Leo", "Libra"]
    
    # elsif user_star_sign == "Capricorn"
    #     female_profiles["Virgo", "Scorpio", "Pisces"]
    
    # elsif user_star_sign == "Aquarius"
    #     female_profiles["Aries", "Sagittarius"]
    
    # elsif user_star_sign == "Pices"
    #     female_profiles["Taurus", "Capricorn"]
    
    # else
    #     puts "Sorry you have no matches" 
    # end


when "F"
Male profiles - one for each star sign, ages go up in incements of 10 starting at 18 (the legal age considerating adult themes associated with dating apps), stops at 118 (accounting for if the oldest person in the world was to be a user), then for remaining star sign takes average of the age group most on dating apps 30 - 44.
    [
        {
            name: "Jack",
            age: 18,
            star_sign: "Aries"
        },
        {
            name: "Christian",
            age: 28,
            star_sign: "Taurus"
        },
        {
            name: "Angus",
            age: 38,
            star_sign: "Gemini"
        },
        {
            name: "Harry",
            age: 48,
            star_sign: "Cancer"
        },
        {
            name: "Zac",
            age: 58,
            star_sign: "Leo"
        },
        {
            name: "Mitchel",
            age: 68,
            star_sign: "Virgo"
        },
        {
            name: "Chris",
            age: 78,
            star_sign: "Libra"
        },
        {
            name: "Logan",
            age: 88,
            star_sign: "Scorpio"
        },
        {
            name: "Todd",
            age: 98,
            star_sign: "Sagittarius"
        },
        {
            name: "Charles",
            age: 108,
            star_sign: "Capricorn"
        },
        {
            name: "Billy",
            age: 118,
            star_sign: "Aquarius"
        },
        {
            name: "Hugh",
            age: 23,
            star_sign: "Pisces"
        }
    ]

    star_sign_matches = {
        "Taurus" => [
            "Cancer",
            "Scorpio",
            "Pisces"
        ],
        "Gemini" => [
            "Aries",
            "Leo",
            "Sagittarius"
        ],
        "Cancer" => [
            "Taurus",
            "Virgo",
            "Capricorn"
        ],
        "Leo" => [
            "Libra",
            "Gemini"
        ],
        "Virgo" => [
            "Scorpio",
            "Pisces"
        ],
        "Libra" => [
            "Leo",
            "Saggitarius"
        ],
        "Scorpio" => [
            "Cancer",
            "Virgo",
            "Capricorn",
            "Pisces"
        ],
        "Sagittarius" => [
            "Aries",
            "Leo",
            "Libra"
        ],
        "Capricorn" => [
            "Virgo",
            "Scorpio",
            "Pisces"
        ],
        "Aquarius" => [
            "Aries",
            "Sagittarius"
        ],
        "Pisces" => [
            "Taurus",
            "Capricorn"
        ]   
    }


    # Provides matches to opposite gender when users identifies as hetero female
    # male_profiles = {"Hugh" => "Aries", "Angus" => "Taurus", "Max" => "Gemini", "Paul" => "Cancer", "Will" => "Leo", "Matt" => "Virgo", "George" => "Libra", "Jack" => "Scorpio", "Luke" => "Sagittarius", "Tom" => "Capricorn", "Julian" => "Aquarius", "Alfie" => "Pisces"}

    # if user_star_sign == "Aries"
    #     compatible["Libra"]
    
    # elsif user_star_sign == "Taurus"
    #     compatible["Cancer", "Scorpio", "Pisces"]
    
    # elsif user_star_sign == "Gemini"
    #     compatible["Aries", "Leo", "Sagittarius"]
    
    # elsif user_star_sign == "Cancer"
    #     compatible["Taurus", "Virgo", "Capricorn"]
    
    # elsif user_star_sign == "Leo"
    #     compatible["Libra", "Gemini"]
    
    # elsif user_star_sign == "Virgo"
    #     compatible["Scorpio", "Pisces"]
    
    # elsif user_star_sign == "Libra"
    #     compatible["Leo", "Sagittarius"]
    
    # elsif user_star_sign == "Scorpio"
    #     compatible["Cancer", "Virgo", "Capricorn", "Pisces"]
    
    # elsif user_star_sign == "Sagittarius"
    #     compatible["Aries", "Leo", "Libra"]
    
    # elsif user_star_sign == "Capricorn"
    #     compatible["Virgo", "Scorpio", "Pisces"]
    
    # elsif user_star_sign == "Aquarius"
    #     compatible["Aries", "Sagittarius"]
    
    # elsif user_star_sign == "Pices"
    #     compatible["Taurus", "Capricorn"]
    
    # else
    # end

when "O"
    # When other gender matches with either gender
    # male_profiles = {"Hugh" => "Aries", "Angus" => "Taurus", "Max" => "Gemini", "Paul" => "Cancer", "Will" => "Leo", "Matt" => "Virgo", "George" => "Libra", "Jack" => "Scorpio", "Luke" => "Sagittarius", "Tom" => "Capricorn", "Julian" => "Aquarius", "Alfie" => "Pisces"}
    # female_profiles = {"Fiona" => "Aries", "Mel" => "Taurus", "Jane" => "Gemini", "Molly" => "Cancer", "Isobel" => "Leo", "Harriet" => "Virgo", "Sophie" => "Libra", "Kate" => "Scorpio", "Georgia" => "Sagittarius", "Zoe" => "Capricorn", "Hannah" => "Aquarius", "Julie" => "Pisces"}
  
    # if user_star_sign == "Aries"
    #     compatible["Libra"]
    
    # elsif user_star_sign == "Taurus"
    #     compatible["Cancer", "Scorpio", "Pisces"]
    
    # elsif user_star_sign == "Gemini"
    #     compatible["Aries", "Leo", "Sagittarius"]
    
    # elsif user_star_sign == "Cancer"
    #     compatible["Taurus", "Virgo", "Capricorn"]
    
    # elsif user_star_sign == "Leo"
    #     compatible["Libra", "Gemini"]
    
    # elsif user_star_sign == "Virgo"
    #     compatible["Scorpio", "Pisces"]
    
    # elsif user_star_sign == "Libra"
    #     compatible["Leo", "Sagittarius"]
    
    # elsif user_star_sign == "Scorpio"
    #     compatible["Cancer", "Virgo", "Capricorn", "Pisces"]
    
    # elsif user_star_sign == "Sagittarius"
    #     compatible["Aries", "Leo", "Libra"]
    
    # elsif user_star_sign == "Capricorn"
    #     compatible["Virgo", "Scorpio", "Pisces"]
    
    # elsif user_star_sign == "Aquarius"
    #     compatible["Aries", "Sagittarius"]
    
    # elsif user_star_sign == "Pices"
    #     compatible["Taurus", "Capricorn"]
    
    # else
#end

end
