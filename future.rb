# Repository for future iterations of application 

# refactor when statements to use methods 

# use different branches for features for API

# interactive menu: issues with API calling; 
# case  menu_input
# when 'League'
# puts "Search league by country:"
# country = gets.chomp
# fav_league.push(country)
# # fav_league << country (?)
# when 'Team' # consider drop down of teams instead
# puts "Search EPL team:" #restrict it to EPL only
# team = gets.strip
# fav_team.push(team)
# data = @client.teams(name: team.capitalize, league: 39, season: 2020)
# team_data = data["response"].first["team"]
# pp team_data
# team_statistics = @client.team_statistics(team: team_data["id"], league: 39, season: 2020)
# pp team_statistics

# team_statistics["response"]["goals"].each do |label, stats| 
# puts "#{label}: #{stats}"
# end

# - drop-down menu for English Premier League teams to mitigate against error handling of user-input
# - Newer and more reliable API; current API has not been updated to include 
# - Specific error handling to deal with misspelt input
# - Table in ‘Display’ to contrast selected players stats side by side; wider array of functions employed: greater use of hashes and methods
