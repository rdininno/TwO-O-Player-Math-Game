class Person
  @@number_of_players = 0;

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

p robert = Person.new
p thomas = Person.new

p robert.loosePoint
p robert

robert.displayScore
thomas.displayScore