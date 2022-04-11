#  assign an id to question
# assign a value
# method that generates a question
# reassign a value to to q
# ra asssign a value of sum

class Question
  attr_accessor :num1, :num2

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @q_id = 0
    @question = "what is #{@num1} + #{@num2} = ?"
    puts @question
  end

  def sum
    @num1 + @num2
  end

  def checks_answer(player_ans)
    (sum == player_ans)
  end

end

# def new_question
#   self.num1 = rand(20)
#   self.num2 = rand(20)
#   self.question = "what is #{@num1} + #{@num2} = ?"
#   self.sum = @num1 + @num2
# end
