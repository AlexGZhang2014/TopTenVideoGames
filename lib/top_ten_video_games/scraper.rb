class Scraper
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.ranker.com/list/most-popular-video-games-today/ranker-games"))
    games = doc.css("h2.listItem") #Should return all games
    games.each do |game|
      new_game = Game.new
      new_game.name = games.css("a.listItem__title").text
      new_game.url = games.css("a.listItem__title").attr("href")
      new_game.release_year = games.css("span.listItem__properties").text
      new_game.rank = games.css("strong.listItem__rank").text
      new_game.description = games.css("span.listItem__wiki").text
      Game.all << new_game if new_game.rank.to_i < 11
    end
  end
end
    