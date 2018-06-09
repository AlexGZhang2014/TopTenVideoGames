class GameCLI
  
  def call_list
    list_games
    specific_game
  end
  
  def list_games
    puts "Here are the Top 10 Video Games Today!"
    @games = Game.list
  end
  
  def specific_game
    puts "If you want to see more information about a specific game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
    input = nil
    until input == "exit"
      input = gets.strip
      number = input.to_i
      if number > 0 && number < 11
        puts "#{Game.all[number-1].name}"
        puts "Release Date: #{Game.all[number-1].release_date}"
        puts "Description: #{Game.all[number-1].description}"
        puts "To see more in-depth information, go to this webpage: #{Game.all[number-1].url}"
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "exit"
        puts "Thank you for using this app. Goodbye!"
      else
        puts "That is not a valid input. Please enter a number 1-10 to see more in-depth info on a particular game, or type \'exit\' if you are done."
      end
    end
  end
  
end
