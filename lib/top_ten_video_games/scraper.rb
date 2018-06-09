class Scraper
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.ranker.com/list/most-popular-video-games-today/ranker-games"))
    games = doc.css("h2.listItem") #Should return all games
    games.each.with_index do |game, i|
      until i == 10
        game = Game.new
        game.name = games.css("a.listItem__title").text
        game.url = games.css("a.listItem__title").attr("href")
        game.release_year = games.css("span.listItem__properties").text
        game.rank = games.css("strong.listItem__rank").text
        game.description = games.css("span.listItem__wiki").text
        Game.all << game
      end
    end
  end
end
    