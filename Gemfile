# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

gem "colorize", "~> 0.8.1"

gem "tty-prompt", "~> 0.23.1"

gem "api_football_v3", "~> 0.0.2"

gem "tty-table", "~> 0.12.0"

gem "tty-font", "~> 0.5.0"

gem "pastel", "~> 0.8.0"


@client = ApiFootballV3::Client.new do |config|
    config.api_key = "3cb2644b3d9b2bf1350557f6c74e1a21"
    config.base_url = "https://v3.football.api-sports.io/"
end


