require 'nokigiri'
require 'open-uri'

class TopTenVideoGames::Game
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
  
  def initialize #The nils will be replaced with appropriate scraping code
    self.name = nil
    self.release_date = nil
    self.rating = nil
    self.publisher = nil
    self.genre = nil
    self.user_score = nil
    self.platform = nil
  end
  
end