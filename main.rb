require './player'
require './question'

players = []
current_player = 0
q = Question.new

life = 2

# Core loop will be while loop
# Condition being players both have lives left
while life > 0

  puts '------- NEW TURN -------'
  puts q.generate_question

  life -= 1

end

# Run game over stuff
puts "------- GAME OVER -------"
