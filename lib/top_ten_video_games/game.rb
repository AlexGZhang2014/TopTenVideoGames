require_relative "../../config/environment.rb"

class Game
  attr_accessor :name, :rank, :release_year, :description, :url
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.ranker.com/list/most-popular-video-games-today/ranker-games"))
    puts "#{doc}"
    doc
    #games = doc.css("h2.listItem") #Should return all games
    #games.each do |game|
      #new_game = Game.new
      #new_game.name = games.css("a.listItem__title").text
      #new_game.url = games.css("a.listItem__title").attr("href")
      #new_game.release_year = games.css("span.listItem__properties").text
      #new_game.rank = games.css("strong.listItem__rank").text
      #new_game.description = games.css("span.listItem__wiki").text
      #Game.all << new_game if new_game.rank.to_i < 11
    #end
  end
  
  def self.list
    Game.scrape_games
    #self.all.each.with_index do |game, i|
      #puts "#{game.rank}. #{game.name} - Release Date: #{game.release_year} - #Description: #{game.description}"
    #end
  end
end