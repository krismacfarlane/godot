class Teacher < Human

  def speak(x)
<<<<<<< HEAD
    puts "#{x} (said the teacher in a soothing voice)."
  end

  def teach(y)
    speak(y)
    puts "(checks for understanding and redirects if necessary)"
  end

=======
    puts("#{x} said the teacher in a soothing voice.")
  end

  def teach(text)
    speak(text)
    puts("checks for understanding")
  end
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
end
