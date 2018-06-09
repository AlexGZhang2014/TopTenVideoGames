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
      if input == "1"
        puts Game.all[0].release_date
        puts Game.all[0].description
        puts Game.all[0].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "2"
        puts Game.all[1].release_date
        puts Game.all[1].description
        puts Game.all[1].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "3"
        puts Game.all[2].release_date
        puts Game.all[2].description
        puts Game.all[2].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "4"
        puts Game.all[3].release_date
        puts Game.all[3].description
        puts Game.all[3].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "5"
        puts Game.all[4].release_date
        puts Game.all[4].description
        puts Game.all[4].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "6"
        puts Game.all[5].release_date
        puts Game.all[5].description
        puts Game.all[5].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "7"
        puts Game.all[6].release_date
        puts Game.all[6].description
        puts Game.all[6].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "8"
        puts Game.all[7].release_date
        puts Game.all[7].description
        puts Game.all[7].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "9"
        puts Game.all[8].release_date
        puts Game.all[8].description
        puts Game.all[8].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "10"
        puts Game.all[9].release_date
        puts Game.all[9].description
        puts Game.all[9].url
        puts "To view more info on a different game, please enter a number 1-10. Otherwise, type \'exit\' when you are done."
      elsif input == "exit"
        puts "Thank you for using this app. Goodbye!"
      else
        puts "That is not a valid input. Please enter a number 1-10 to see more in-depth info on a particular game, or type \'exit\' if you are done."
      end
    end
  end
  
end
