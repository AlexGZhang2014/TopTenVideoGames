require_relative "../../config/environment.rb"

class TopTenVideoGames::Game
  attr_accessor :name, :url, :release_date, :rating, :publisher, :genre, :user_score, :platform
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.scrape_games
    doc = Nokogiri::HTML(open("http://www.metacritic.com/browse/games/score/metascore/90day/all/filtered?view=detailed"))
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
  
  def initialize #The nils will be replaced with appropriate scraping code
    @name = nil
    @url = nil
    @release_date = nil
    @rating = nil
    @publisher = nil
    @genre = nil
    @user_score = nil
    @platform = nil
  end
  
  def self.list
    self.scrape_games
    self.all.each.with_index do |game, i|
      puts "#{i+1}. #{game.name} - Release Date: #{game.release_date} - Rating: #{game.rating} - Publisher: #{game.publisher} - Genre(s): #{game.genre} - User Score: #{game.user_score} - Platform: #{game.platform}"
    end
  end
    
  
end