class Question

  def generate_question

    first = rand(1..20)
    second = rand(1..20)
    answer = first + second

    question = {
      'first' => first,
      'second' => second,
      'answer' => answer
    }
    
  end

end