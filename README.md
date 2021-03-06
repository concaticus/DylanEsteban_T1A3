# Terminal Application

Link to repository can be accessed [here](https://github.com/dylan-devs/DylanEsteban_T1A3)

## Software Development Plan

Footy-Stats Look-Up! seeks to be a ruby-based terminal application that provides a user-friendly interface and operates as means for users to in-put text, save searches, and explore and interact with football (soccer) statistics that they deem relevant, interesting, or important.

There will be several features employed in the terminal application - which are described in greater detail below - that allow the user to interact with the terminal application wherein they can access information about their favourite players, teams, or details of a specific domestic league or competition.

Statistics are important. Whilst raw data might not be accessible or meaningful to many people on it's own, when combined with a simple and user-friendly interface, it can be a powerful means for users to access, interact, and engage with stats. Often, (see old read.me)

Footy Stats Look-Up seeks to alleviate the end-user's difficulty in this regard and provide a space whereby users can locate their favourite sporting teams and players statistics in an accessible manner.

Target audience primarily includes sports analysts, enthusiasts, and anyone with a general curiosity to access football (soccer) information and statistics. Additionally, this can be a means to aid e-sports players and hobbyists whose analysis, for example, relies on statistics and form for informing their fantasy-team selection

Upon opening the application, the target audience will be received with straight-forward prompts. Users will have the option of searching for domestic league competitions (via ‘Country’), specific teams (via ‘Teams’) and or players (‘Players’). Included in the main-menu will be additional options to display prior searches (see Features 2 below) and an option to exit the program if they so wish. The specific searches will be saved and stored as arrays, and their details are to be displayed when entering ‘Display’ mode. The intent is to have - at the user’s disposal - a resource to research, look-up, and study their desired statistical information.

## Features

### Features 1: Interactive menu

Program operates with a single loop with case statements used within the menu prompt to allow the program to follow the user's desired selection. Local variables corresponding to the three potential categories of user input (country, team, or player) are initialised as empty arrays to store user selection and prior input (see Features 2 for further elaboration on this point). Colorize, tty-prompt, Pastel, and tty-prompt were employed to enhance the interactive menu’s usability and general aesthetic. Menu input is also initialised in conjunction with tty-prompt to allow for an interactive drop-down menu of available options to either 1) search for a league, team, or player, or 2) display prior searches, or 3) exit program. This gem is important for a number of reasons, chiefly because it aids in reducing error handling but also assists with user-accessibility.

### Feature 2: Save and Display Prior Searches

This feature is an important component. I wanted to ensure that there was a means by which the user's input was recorded, saved, and can be displayed and known on the home screen. User's selected input is saved in an array (‘country’, ‘team’, or ‘player’). Existing if-else statements and code was refracted into a precise single line ternary operator using short-circuit logic operators such as && to ensure efficiency of code and following principles of DRY.

```ruby
puts (fav_league.empty? && fav_team.empty? && fav_player.empty?) ? "You have no prior searches. Let's change that!".red.italic : "You currently have: #{out_put(fav_league.length, 'league').red.italic}, #{out_put(fav_team.length, 'team').green.italic} & #{out_put(fav_player.length, 'player').blue.italic}"

```

Interactive menu is built with a case statement that is declared as a local variable menu_input in conjunction with tty-prompt, allowing for users to easily choose between menu options:

```ruby
menu_input = prompt.select("Do you have a favourite league, team or player? Hit display to view your prior searches!", %w(League Team Player Display Exit))

```

Within the case statement, user input is instantiated as a variable and then the push() function is employed to push user input to respected arrays. In conjunction with methods used, the displayed number of searches for each category can be seen, allowing users to manually track and see their prior searches.

Stored in methods.rb, the following method was employed which pluralises results if the length is not equal to 1 and allows for user-interface to display the user’s input to be returned as out_put:

```ruby
# menu for interface method
def out_put(length, keyword)
    return "#{length} searched #{keyword}#{'s' if length != 1}"
end
```

This, for example, would return the likes of: You currently have: 1 searched league, 0 searched teams, & 3 searched players. This aids in readability of the app but also helps the program conform to language conventions, handling any awkward errors relating to readability. Issue with displaying saved results via 'Display' in the menu persists. Further debugging required to ascertain the issue.

### Feature 3: Exit Feature

Case statement was used for Exit Feature as part of main-menu to provide options to users. When ‘Exit’ is selected, a prompt is offered asking the user if they wish to continue. Option_yes is initialised as a variable for gets.chomp in order for the following ‘break if’ statement to be executed if the user does indeed wish to exit:

```ruby
        #Exit feature to allow user to quit program
        when 'Exit'
            puts "Are you sure you want to quit? Type 'YES' to exit or enter any key to return to main-menu"
            option_yes = gets.chomp
            break if option_yes == 'yes' #break statement to terminate loop
            else
                end #end loop and exit case statement and return to main-menu
                system "clear"
```

The ‘break if’ statement ends the program’s loop and transfers control out of the block of code, out of the iterator that had invoked the block, and moves to the first expression following the iterator. If selected, the program ends and the system is cleared. The alternative

To handle any input errors, the only alternative is that the input of any key will end the case statement and loop back to the beginning of the program. This will immediately return the user to the main-menu to remain in the program and continue with their session.

## Some reflections on features and implementation:

With respect to the present terminal app, a central component that was primarily envisioned was it’s interaction with an external API. Some issues were encountered whilst using it, and with reference to the documentation, implementation was slow and challenging. A decision was chosen to not pursue its implementation in this iteration due to time-constraints and difficulties with it’s application and implementation. Despite this short-coming, the present app still functions smoothly, and it’s other features listed above are all operational and working, ensuring it meets minimum requirements for assessment.

Consequently, and as a result of the scale-back, future.rb was created to act as a repository for some edited out and unused code, as well as notes and ideas for future iterations of this app. Future iterations and features of consideration include, amongst others:

- Drop-down menu for English Premier League teams to mitigate against error handling of user-input
- Newer and more reliable API as current API has not been updated to include
- Refactoring of case statements to use more methods for lesser and cleaner code
- Specific error handling mechanisms to deal with misspelt input
- Table in ‘Display’ to contrast selected players stats side by side
- These aspects will be returned to in future to bring some elements of Footy Stats Look-up! closer to original application design plan but also further in scope and utility.

## Interaction & Experience

With each feature, care has been taken to make all aspects of usability as intuitive as possible. Upon opening Footy Stats Look-Up! the user will be greeted by a colourful opening title, as well as a colorized prompt nudging the user to make a selection. Underneath the title and prompt, an interactive menu will be displayed on screen.

From here, the user has the choice to select and search for their favourite teams, players, or leagues by selecting from the available drop-down menu, courtesy of the tty-prompt gem. Further, the interactive menu will also provide a display feature whereby prior searches can be displayed next to each other, but also an option to leave the program, which will activate the exit feature. Searches made, be they from the category of countries, players, or teams, will be stored and displayed in the app’s main-menu. Colorize has been employed to distinguish between the various searches, allowing the user a more aesthetically pleasing experience but also assisting in readability by giving different colours for each category searched.
When opening the Exit option, users will be prompted with a question asking whether they wish to continue using the application and return to the main-menu or they are given the option of exiting the program. Errors, such as those with the exit feature, have been minimised with the use of helpful prompts and break if statement which will break the loop and allow the user to return to main-menu if they choose to continue with the program.

## Flowchart

Original flow chart:
![Flow chart](/docs/flowchart1.png)

Current flow chart:
![Flow chart](/docs/flowchart_current.png)

- same process in current flow chart with the important exception of not calling and returning the Data from the API
- other features are in tact and operational. Selections will still be inputted, saved, and can be displayed

## Development Plan | Trello:

Trello was utilised as the main project management platform to track, follow, and implement project

The board can be viewed [here](https://trello.com/invite/b/WUYTWQdC/e7a19ebb920aaf4491e0ef3900ed315f/ruby-app)

## Help Documentation

# Script

# Gems

At Footy Stats Look-Up!, we recommend installing Ruby Gems with bundler, a super user-friendly gem dependency manager that helps applications organise, download, and use Ruby gems and allows said gems to run in multiple environments.
The following steps will help set up Bundler and the subsequent gems:
Initialise the Gemfile. Initialise from application’s root folder with:

```
bundle init
```

This creates a gemfile and adds the source (https://rubygems.org) which points to the remote source for the gems to be installed.

Add gems to your project with:

```
bundle add colorize
```

This installs the gem via bundle and adds it to the Gemfile as a dependency

Require gem in your main file or index.rb by placing:

```
require(‘colorize’)
```

At top of your file.

Alternatively, by running:
`bundle install`
In the terminal within your app’s root directory, bundle will read the gemfile and install the necessary gems.

The current iteration of Footy Stats Look-Up! employs the following gems:

[Bundler](https://rubygems.org/gems/bundler)
[Pastel](https://rubygems.org/gems/pastel)
[tty-prompt](https://rubygems.org/gems/tty-prompt)
[colorize](https://rubygems.org/gems/colorize)
[tty-font](https://rubygems.org/gems/tty-font)
[rspec](https://rubygems.org/gems/rspec)

This iteration of the terminal app is using the following versions of each Gem:

- gem "colorize", "~> 0.8.1"

- gem "tty-prompt", "~> 0.23.1"

-gem "tty-font", "~> 0.5.0"

gem "pastel", "~> 0.8.0"

gem "rspec", "~> 3.10"

It is recommended to download these versions for most optimal performance with Footy Stats Look-Up!
