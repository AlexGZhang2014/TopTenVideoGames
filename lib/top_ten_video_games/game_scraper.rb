class TopTenVideoGames::GameScraper
  def initialize
    doc = Nokogiri::HTML(open("https://www.ranker.com/list/most-popular-video-games-today/ranker-games"))
    @games = doc.css("h2.listItem") #Proven to return all 50 games listed on the website
  end
  
  def scrape_games
    index = 0
    @games.each do |game|
      while index < 10
	      new_game = TopTenVideoGames::Game.new
	      new_game.name = @games.css("a.listItem__title")[index].text
	      new_game.url = @games.css("a.listItem__title")[index].attr("href")
	      new_game.release_date = @games.css("span.listItem__properties")[index].text
	      new_game.rank = @games.css("strong.listItem__rank")[index].text
	      new_game.description = @games.css("span.listItem__wiki")[index].text
	      TopTenVideoGames::Game.all << new_game
	      index += 1
      end
    end
  end
end