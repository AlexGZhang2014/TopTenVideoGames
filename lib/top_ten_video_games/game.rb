require_relative "../../config/environment.rb"

class Game
  attr_accessor :name, :rank, :release_year, :description, :url
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.list
    Scraper.scrape_games
    self.all.each.with_index do |game, i|
      puts "#{game.rank}. #{game.name} - Release Date: #{game.release_year} - Description: #{game.description}"
    end
  end
end