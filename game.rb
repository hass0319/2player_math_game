require_relative "player.rb"
require_relative "question.rb"

class Game
attr_accessor :Game

  def initialize
    newgame_loopy

    @current_player = @player1
    game_over = true
  end

  def newgame_loopy
    while game_over == true

      def start_game
        puts "This is a 2 player math game. Instructions: \n\t An addition question is generated each turn \n\t Answer correctly or lose a life.\n\t Each palyer has 3 lives"

        puts "Please enter Player 1's name"
        print "> "
        player1_name = gets.chomp.to_s
        @player1 = Player.new(player1_name)

        puts "Please enter Player 2's name"
        print "> "
        player2_name = gets.chomp.to_s
        @player2 = Player.new(player2_name)

        puts "\tSTART GAME"
      end

      def loopy
        puts "\tNew Turn"

        while !@current_player.end_game do
          puts "#{@current_player.name}'s turn"

          question  = Question.new

          @current_player
          player_ans = gets.chomp.to_i
          print "> "

          question.checks_answer(player_ans) ? @current_player.right : @current_player.wrong

          @current_player = other_player

          puts "score #{@player1.name}: #{@player1.lives}/3 #{@player2.name}: #{@player2.lives}/3"
        end
        congratulate_winner
        game_over
      end
    end
  end

  def congratulate_winner
    puts "Congratz on Winning #{other_player.name} score #{other_player.lives}/3"
  end

  def other_player
    if @current_player == @player1
      return @player2
    else
      return @player1
    end
  end

  def game_over
    puts "GAME OVER"
    puts "play again (y/n)?"
    res = gets.chomp.to_s

    if (res == 'y' || res =='Y')
      newgame_loopy
    elsif (res == 'n' || res == 'N')
      puts "Good bye!"
      sleep 1
    else
      puts "Enter y/n"
      res = gets.chomp.to_s
    end
  end
end