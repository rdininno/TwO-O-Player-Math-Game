class Question
  def initialize
    @number1 = rand(100)
    @number2 = rand(100)
    @answer = @number1 + @number2
  end

  def displayQuestion
    puts "What is #{@number1} plus #{@number2}?"
  end

  def answer
    puts "the answer is #{@answer}"
  end
end

question1 = Question.new
question1.displayQuestion
question1.answer
