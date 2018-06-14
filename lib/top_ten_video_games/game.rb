# 1. Create a Scraper class that's responsible for just scraping - done
# 2. All `puts` statements should go in the CLI class - done
# 3. Talk about module namespacing - done
class TopTenVideoGames::Game
  attr_accessor :name, :rank, :release_date, :description, :url
  
  @@all = []
  
  def self.all
    @@all
  end
end