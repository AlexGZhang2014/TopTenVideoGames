require 'nokigiri'
require 'open-uri'

class TopTenVideoGames::Game
  attr_accessor :name, :release_date, :rating, :publisher, :genre, :user_score, :platform
  
  @@all = []
  
  def self.all
    @@all
  end
  
  doc = Nokogiri::HTML(open(http://www.metacritic.com/browse/games/score/metascore/90day/all/filtered?view=detailed))
  games = doc.css("li.product.has_small_image") #Should return all games
  
  def self.scrape
    games.each.with_index do |game, i|
      until i == 10
        game = self.new
        game.name = #scraped name
        game.release_date = #scraped release date
        game.rating = #scraped rating
        game.publisher = #scraped publisher
        game.genre = #scraped genre(s)
        game.user_score = #scraped user score
        game.platform = #scraped platform
        self.all << game
      end
    end
  end
  
  #game_name = games.css("h3.product_title a").text
  
  def initialize #The nils will be replaced with appropriate scraping code
    @name = nil
    @release_date = nil
    @rating = nil
    @publisher = nil
    @genre = nil
    @user_score = nil
    @platform = nil
  end
  
  def self.list
    self.all.each do |game|
      puts "1. God of War - Release Date: Apr 20, 2018 - Rating: M - Publisher: Sony Interactive Entertainment - Genre(s): Action Adventure, Linear - User Score: 9.2 - Platform: PS4"
    end
  end
    
  
end