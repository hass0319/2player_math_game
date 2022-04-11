require_relative "question"

class Player
  attr_accessor :name, :lives

  def initialize (name)
    @name = name
    @lives = 3
  end

  def right
    puts "WoW, and in the first try...!"
  end

  def wrong
    self.lives -= 1
    puts "walah Donkey!!"
  end

  def end_game
    @lives == 0
  end

end