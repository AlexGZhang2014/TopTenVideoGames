class TopTenVideoGames::CLI
  
  def call_list
    list_games
    specific_game
  end
  
  def list_games
    puts "Here are the Top 10 Video Games from the past 90 days!"
    puts <<-list.gsub(/^\s+/, "")
    1. God of War - Release Date: Apr 20, 2018 - Rating: M - Publisher: Sony Interactive Entertainment - Genre(s): Action Adventure, Linear - User Score: 9.2 - Platform: PS4
    2. Ikaruga - Release Date: May 29, 2018 - Rating: E10+ - Publisher: Nicalis - Genre(s): Action, Shooter, Shoot-'Em-Up, Vertical - User Score: 8.1 - Platform: Switch
    3. Owlboy - Release Date: Apr 10, 2018 - Rating: E10+ - Publisher: Soedesco - Genre(s): Action Adventure, General - User Score: 6.6 - Platform: PS4
    4. Pillars of Eternity II: Deadfire - Release Date: May 8, 2018 - Rating: M - Publishers: Obsidian Entertainment, Versus Evil - Genre(s): Role-Playing, Western-Style - User Score: 7.8 - Platform: PC
    5. Injustice 2: Legendary Edition - Release Date: Mar 27, 2018 - Publisher: Warner Bros. Interactive Entertainment - Genre(s): Action, 2D, Fighting - User Score: 7.4 - Platform: PS4
    6. Hellblade: Senua’s Sacrifice - Release Date: Apr 11, 2018 - Rating: M - Publisher: Ninja Theory - Genre(s): Action Adventure, General - User Score: 8.0 - Platform: XONE
    7. The Elder Scrolls Online: Summerset - Release Date: May 21, 2018 - Rating: M - Publisher: Bethesda Softworks - User Score: 8.1 - Platform: PC
    8. Dark Souls Remastered - Release Date: May 25, 2018 - Rating: M - Publisher: Bandai Namco Games - Genre(s): Role-Playing, Action RPG - User Score: 6.0 - Platform: PS4
    9. Donkey Kong Country: Tropical Freeze - Release Date: May 4, 2018 - Rating: E - Publisher: Nintendo - Genre(s): Action, Platformer, 2D - User Score: 8.5 - Platform: Switch
    10. Shantae and the Pirate’s Curse - Release Date: Mar 20, 2018 - Rating: E10+ - Publisher: WayForward - Genre(s): Action, Platformer, 2D - User Score: 7.9 - Platform: Switch
    list
  end
  
  def specific_game
    puts "If you want to see more in-depth information about a specific game, please enter a number 1-10."
    input = gets.strip
    if input == "1"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/playstation-4/god-of-war"
    elsif input == "2"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/switch/ikaruga"
    elsif input == "3"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/playstation-4/owlboy"
    elsif input == "4"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/pc/pillars-of-eternity-ii-deadfire"
    elsif input == "5"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/playstation-4/injustice-2-legendary-edition"
    elsif input == "6"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/xbox-one/hellblade-senuas-sacrifice"
    elsif input == "7"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/pc/the-elder-scrolls-online-summerset"
    elsif input == "8"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/playstation-4/dark-souls-remastered"
    elsif input == "9"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/switch/donkey-kong-country-tropical-freeze"
    elsif input == "10"
      puts "Go to this webpage to view more info on this game."
      puts "http://www.metacritic.com/game/switch/shantae-and-the-pirates-curse"
    end
  end
  
end
