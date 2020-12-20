require './validators'

system("clear")

def welcome_and_user_input_gender
    while true
puts "\nListen up if you're looking to fall in love, you want to start dating or you're ready to start a relationship you're at the right place!\nPlease select your gender."
# Gets users gender so can be matched with someone of the opposite gender. Note MVP is not inclusive, it is purley for hetero singles.
puts = "Gender"
    puts"M"
    puts"F"
    puts"O"
    user_gender = gets.chomp
    input_valid = Validators.validate_input(user_gender.capitalize)
    puts input_valid
    if input_valid
        return user_gender.capitalize
    end
  end
end

def user_age_and_star_sign
    puts "\nHow old are you?"
    user_age = gets.chomp.to_i
    # Gets users star sign
    puts "\nLastly, what is your star sign?"
    puts "\nAries March 21 - April 19", "\nTaurus April 20 - May - 20", "\nGemini May 21 - June 20", "\nCancer June 21 - July 22", "\nLeo July 23 - August 22", "\nVirgo August 23 - September 22", "\nLibra September 23 - October 22", "\nScorpio October 23 - November 21", "\nSagittarius November 22 - December", "\nCapricorn December 22 - January 19", "\nAquarius January 20 February 18", "\nPisces February 19 - March 20"
    user_star_sign = gets.chomp
    return user_age, user_star_sign.capitalize
end

# def user_age_input
#     #Gets users age
#     puts "\nHow old are you?"
#     user_age = gets.chomp.to_i
#     # input_valid = Validators.validate_input(user_age)
#     #  if input_valid
#     # end

# def user_star_sign_input
#     # Gets users star sign
#     puts "\nLastly, what is your star sign?"
#     puts "\nAries March 21 - April 19", "\nTaurus April 20 - May - 20", "\nGemini May 21 - June 20", "\nCancer June 21 - July 22", "\nLeo July 23 - August 22", "\nVirgo August 23 - September 22", "\nLibra September 23 - October 22", "\nScorpio October 23 - November 21", "\nSagittarius November 22 - December", "\nCapricorn December 22 - January 19", "\nAquarius January 20 February 18", "\nPisces February 19 - March 20"
#     user_star_sign = gets.chomp
#     user_star_sign.capitalize
#     # input_valid = Validators.validate_input(iser_star_sign.capitalize)
#     #  if input_valid
#     # end


user_gender = welcome_and_user_input_gender
user_age, user_star_sign = user_age_and_star_sign

# user_gender_identified = welcome_and_user_input_genderI(user_gender)

case user_gender
when "M"
# if user_gender_identified == "M"
    female_profiles = [
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
            age: 28,
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
        ],
        "Aries" => [
            "Libra"
        ]   
    }

    list_of_matches = []
    # user_age = 40
    # user_star_sign = "Capricorn"
    #=> Virgo Scorpio Pisces
    user_star_sign_matches = star_sign_matches[user_star_sign]
    #=> 27
    user_age_rule_min = (user_age / 2) + 7
    #=> 66
    user_age_rule_max = (user_age - 7) * 2
    matched_profiles = female_profiles.filter do | female_profile |
        age_match = female_profile[:age] >= user_age_rule_min && female_profile[:age] <= user_age_rule_max
        star_sign_match = user_star_sign_matches.include? female_profile[:star_sign]
        if age_match && star_sign_match
        list_of_matches << female_profile
        end
    end
    
    if list_of_matches.length == 0
        puts "No one matched with you"
    else
    list_of_matches.each do |x|
        puts "#{x[:name]} who is #{x[:age]} and star sign #{x[:star_sign]} has matched with you!"
    end
    end
when "F"    
# elsif user_gender_identified == "M"
# Male profiles - one for each star sign, ages go up in incements of 10 starting at 18 (the legal age considerating adult themes associated with dating apps), stops at 118 (accounting for if the oldest person in the world was to be a user), then for remaining star sign takes average of the age group most on dating apps 30 - 44.
    male_profiles = [
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
        ],
    "Aries" => [
        "Libra"
    ]   
    }  
    list_of_matches = []
    # user_age = 40
    # user_star_sign = "Capricorn"
    #=> Virgo Scorpio Pisces
    user_star_sign_matches = star_sign_matches[user_star_sign]
    #=> 27
    user_age_rule_min = (user_age / 2) + 7
    #=> 66
    user_age_rule_max = (user_age - 7) * 2
    matched_profiles = male_profiles.filter do | male_profile |
        age_match = male_profile[:age] >= user_age_rule_min && male_profile[:age] <= user_age_rule_max
        star_sign_match = user_star_sign_matches.include? male_profile[:star_sign]
        if age_match && star_sign_match
        list_of_matches << male_profile
        end
    end
    
    if list_of_matches.length == 0
        puts "No one matched with you"
    else
    list_of_matches.each do |x|
        puts "#{x[:name]} who is #{x[:age]} and star sign #{x[:star_sign]} has matched with you!"
    end
    end
when "O"
# elsif user_gender_identified == "O" 
    # When user identifies gender as O for other, provides matches to profiles of either/both genders.
    female_and_male_profiles = [
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
        },
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
        ],
        "Aries" => [
            "Libra"
    ]      
    }
    list_of_matches = []
    # user_age = 40
    # user_star_sign = "Capricorn"
    #=> Virgo Scorpio Pisces
    user_star_sign_matches = star_sign_matches[user_star_sign]
    #=> 27
    user_age_rule_min = (user_age / 2) + 7
    #=> 66
    user_age_rule_max = (user_age - 7) * 2
    matched_profiles = female_and_male_profiles.filter do | female_and_male_profile |
        age_match = female_and_male_profile[:age] >= user_age_rule_min && female_and_male_profile[:age] <= user_age_rule_max
        star_sign_match = user_star_sign_matches.include? female_and_male_profile[:star_sign]
        if age_match && star_sign_match
        list_of_matches << female_and_male_profile
        end
    end
    
    if list_of_matches.length == 0
        puts "No one matched with you"
    else
    list_of_matches.each do |x|
        puts "#{x[:name]} who is #{x[:age]} and star sign #{x[:star_sign]} has matched with you!"
    end
end
else
    # print error message for invalid input
    # re-print options
    puts "Invalid input, please try again."
    puts "Press any key to continue"
    gets
    welcome_and_user_input_gender()
    user_age_and_star_sign()
    end

