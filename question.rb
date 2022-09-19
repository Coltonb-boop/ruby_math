class Question

  def generate_question

    first = rand(1..10)
    second = rand(1..10)
    answer = first + second

    question = {
      'first' => first,
      'second' => second,
      'answer' => answer
    }
    
  end

end