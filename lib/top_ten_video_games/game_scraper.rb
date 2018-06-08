require 'open-uri'

class TopTenVideoGames::GameScraper
  doc = Nokogiri::HTML(open(http://www.metacritic.com/browse/games/score/metascore/90day/all/filtered?view=detailed))
end