class Scraper
  def self.scrape_games
    doc = Nokogiri::HTML(open("http://www.metacritic.com/browse/games/score/metascore/year/all/filtered?sort=desc&view=detailed"))
    games = doc.css("li.product.has_small_image") #Should return all games
    games.each.with_index do |game, i|
      until i == 10
        game = self.new
        game.name = games.css("h3.product_title a").text
        game.url = games.css("h3.product_title a").attr("href")
        game.release_date = games.css("div.more_stats li.release_date span.data").text
        game.rating = games.css("div.more_stats li.maturity_rating span.data").text
        game.publisher = games.css("div.more_stats li.publisher span.data").text
        game.genre = games.css("div.more_stats li.genre span.data").text.strip
        game.user_score = games.css("div.more_stats li.product_avguserscore span.data").text
        game.platform = games.css("div.more_stats li.platform_list span.data a").text
        self.all << game
      end
    end
  end
end
    