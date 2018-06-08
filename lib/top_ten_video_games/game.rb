require 'nokigiri'
require 'open-uri'

class TopTenVideoGames::Game
  attr_accessor :name, :release_date, :rating, :publisher, :genre, :user_score, :platform
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.scrape_games
    doc = Nokogiri::HTML(open(http://www.metacritic.com/browse/games/score/metascore/90day/all/filtered?view=detailed))
    games = doc.css("li.product.has_small_image") #Should return all games
    games.each.with_index do |game, i|
      until i == 10
        game = self.new
        game.name = games.css("h3.product_title a").text
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
    self.scrape_games
    self.all.each.with_index do |game, i|
      puts "#{i+1}. #{game.name} - Release Date: #{game.release_date} - Rating: #{game.rating} - Publisher: #{game.publisher} - Genre(s): #{game.genre} - User Score: #{game.user_score} - Platform: #{game.platform}"
    end
  end
    
  
end