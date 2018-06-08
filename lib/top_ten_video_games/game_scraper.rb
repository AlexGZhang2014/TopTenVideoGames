require 'open-uri'

class TopTenVideoGames::GameScraper
  doc = Nokogiri::HTML(open(http://www.metacritic.com/browse/games/score/metascore/90day/all/filtered?view=detailed))
  games = doc.css("li.product.has_small_image")
  
  def scrape
    games_array = []
    games.each.with_index do |game, i|
      until i == 10
        games_array << game
      end
    end
    games_array.each 
  end
  
end