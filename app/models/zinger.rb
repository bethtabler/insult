class Zinger
  def pick_random_line
    sample_line = File.readlines(Rails.root + "lib/assets/insult.txt").sample
    sample_line.strip
  end

  def rand_num
    rand(1..4)
  end

  def full_zinger
    sentence = [] 
    rand_num.times do 
      selection = pick_random_line
      sentence << selection
    end
    if sentence[0][0] == sentence[0][0].upcase 
      "#{sentence[0]}."
    elsif sentence[0][0] =~ /[aeiou]/
      "You are an #{sentence.join(', ')} and #{pick_random_line}." 
    else
      "You are a #{sentence.join(', ')}."
    end
    
  end

  def formatted_insult
    individual_words = full_zinger.split(' ')
    individual_words[0] = "<span class='first_words'>#{individual_words.first}</span>"
    individual_words.join(' ').html_safe
  end

end
