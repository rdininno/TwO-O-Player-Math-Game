class Question
  attr_reader :number1, :number2, :answer

  def initialize
    @number1 = rand(100)
    @number2 = rand(100)
    @answer = @number1 + @number2
  end

  def display
    "What is #{@number1} plus #{@number2}?"
  end
end
