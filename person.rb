class Person
  @@number_of_players = 0;

  attr_accessor :name, :score

  def initialize 
    @@number_of_players += 1
    @name = "Player #{@@number_of_players}"
    @score = 3
  end

  def loosePoint
    @score -= 1
  end

  def displayScore
    puts "#{@name}: #{@score}/3"
  end
end