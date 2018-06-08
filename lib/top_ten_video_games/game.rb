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
  
  def scrape
    games_array = [] #This should hold all new Game instances
    games.each.with_index do |game, i|
      until i == 10
        game = Game.new
        games_array << game
      end
    end
    games_array
  end
  
  #name = games.css("h3.product_title a").text
  
  def initialize #The nils will be replaced with appropriate scraping code
    @name = nil
    @release_date = nil
    @rating = nil
    @publisher = nil
    @genre = nil
    @user_score = nil
    @platform = nil
  end
  
end