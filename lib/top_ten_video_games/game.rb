require_relative "../../config/environment.rb"

class Game
  attr_accessor :name, :rank, :release_year, :description, :url
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.list
    self.scrape_games
    self.all.each.with_index do |game, i|
      puts "#{i+1}. #{game.name} - Release Date: #{game.release_date} - Rating: #{game.rating} - Publisher: #{game.publisher} - Genre(s): #{game.genre} - User Score: #{game.user_score} - Platform: #{game.platform}"
    end
  end
    
  
end