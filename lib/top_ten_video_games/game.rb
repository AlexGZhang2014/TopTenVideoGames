require_relative "../../config/environment.rb"

class Game
  attr_accessor :name, :rank, :release_year, :description, :url
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.ranker.com/list/most-popular-video-games-today/ranker-games"))
    games = doc.css("h2.listItem") #Proven to return all 50 games
    index = 0
    games.each do |game|
      while index < 10
        new_game = self.new
        new_game.name = games.css("a.listItem__title")[index].text
        new_game.url = games.css("a.listItem__title")[index].attr("href")
        new_game.release_year = games.css("span.listItem__properties")[index].text
        new_game.rank = games.css("strong.listItem__rank")[index].text
        new_game.description = games.css("span.listItem__wiki")[index].text
        self.all << new_game
        index += 1
      end
    end
      #new_game = self.new
      #new_game.name = games.css("a.listItem__title").text
      #new_game.url = games.css("a.listItem__title").attr("href").text
      #new_game.release_year = games.css("span.listItem__properties").text
      #new_game.rank = games.css("strong.listItem__rank").text
      #new_game.description = games.css("span.listItem__wiki").text
      #self.all << new_game
  end
  
  def self.list
    self.scrape_games
    puts "#{self.all}"
    #self.all.each.with_index do |game, i|
      #puts "#{game.rank}. #{game.name} - Release Date: #{game.release_year} - #Description: #{game.description}"
    #end
  end
end