require './player'
require './question'

p1 = Player.new('p1')
p2 = Player.new('p2')

p1_turn = true
question = Question.new

life = 2

# Core loop will be while loop
# Condition being players both have lives left
while (p1.lives > 0 && p2.lives > 0)

  current_question = question.generate_question
  current_player = p1_turn ? 1 : 2

  puts '------- NEW TURN -------'
  puts "Player #{current_player}: What does #{current_question['first']} plus #{current_question['second']} equal?"
  
  player_response = gets.chomp.to_i

  puts (player_response == current_question['answer'] ? 
    "Player #{current_player}: YES! You are correct" :
    "Player #{current_player}: Seriously? No!"
  )
  
  if player_response != current_question['answer']

    # Get current player and decrease lives (true = p1)
    p1_turn ? p1.lose_life : p2.lose_life

  end

  puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"

  p1_turn = !p1_turn
  life -= 1

end

# Run game over stuff
puts "------- GAME OVER -------"
