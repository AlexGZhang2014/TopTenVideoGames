class TopTenVideoGames::GameCLI
  
  def call_list
    TopTenVideoGames::GameScraper.new.scrape_games
    list_games
    specific_game
  end
  
  def list
    TopTenVideoGames::Game.all.each do |game|
      puts "#{game.rank}. #{game.name}"
    end
  end
  
  def list_games
    puts "Here are the Top 10 Video Games Today!"
    list
  end
  
  def specific_game
    puts "If you want to see more information about a specific game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
    input = nil
    until input == "exit"
      input = gets.strip
      number = input.to_i
      if number > 0 && number < 11
        puts "#{TopTenVideoGames::Game.all[number-1].name}"
        puts "Release Date: #{TopTenVideoGames::Game.all[number-1].release_date}"
        puts "Description: #{TopTenVideoGames::Game.all[number-1].description}"
        puts "To see more in-depth information, go to this webpage: #{TopTenVideoGames::Game.all[number-1].url}"
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "exit"
        puts "Thank you for using this app. Goodbye!"
      else
        puts "That is not a valid input. Please enter a number 1-10 to see more in-depth info on a particular game, or type \'exit\' if you are done."
      end
    end
  end
  
end
