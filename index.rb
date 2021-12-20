

#gems to grab: colorize, ppty-prompt, Ruby API, Ruby Table
#readme: include versions of gems to install

#gems from Gemfile
require ('colorize')
require ('tty-prompt')
require ('tty-table')
require ('tty-font')
require ('pastel')
require ('api_football_v3')
@client = ApiFootballV3::Client.new do |config|
    config.api_key = "3cb2644b3d9b2bf1350557f6c74e1a21"
    config.base_url = "https://v3.football.api-sports.io/"
end
# prompt =



require_relative('methods')

#initialized gems
prompt = TTY::Prompt.new
pastel = Pastel.new
font = TTY::Font.new(:doom)


# empty arrays for user in-put
fav_league = []
fav_team = []
fav_player = []

#menu loop + gems: colorize, tty-prompt, pastel, tty-font
while true 
    # puts "Hi! Welcome to Footy Stats Look-Up!"
    # puts pastel.red("Unicorns!")
    # puts pastel.red.on_green.bold("Unicorns!")
    # puts pastel.decorate("Hi! Welcome to Footy Stats Look-Up!", :green, :on_white, :bold)
    puts pastel.yellow.bold(font.write("Footy Stats Look-Up!"))

    #ternary opterator employed to keep code DRY
    puts (fav_league.empty? && fav_team.empty? && fav_player.empty?) ? "You have no prior searches. Let's change that!".red.italic : "You currently have: #{out_put(fav_league.length, 'league').red.italic}, #{out_put(fav_team.length, 'team').green.italic} & #{out_put(fav_player.length, 'player').blue.italic}"

    #menu user-input + Gem
    menu_input = prompt.select("Do you have a favourite league, team or player? Hit display to view your prior searches!", %w(League Team Player Display Exit))


    case  menu_input
    when 'League'
    puts "Search league by country:"


    when 'Team' 
    puts "Search EPL team:"
    team = gets.chomp

    when 'Player'
    puts "Search player"
    player = gets.chomp

#building the exit feature to allow for quitting program
when 'Exit'
    puts "Are you sure you want to quit? Type 'YES' to exit or type any key to return to main-menu"
    quit_choice = gets.chomp
    break if quit_choice.downcase == 'yes' #break statement to terminate loop
    else
    # puts "Error: Invalid Input. Please try again."
    end
    puts "Press any key to continue"
    # gets 
    system "clear"
    
    end
    system "clear"
