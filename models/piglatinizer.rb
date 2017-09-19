class PigLatinizer


  def to_pig_latin(sentence)
    sentence.split(" ").map {|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    if word =~ (/\A[aeiou]/i)
      word = word + 'way'
    else
      vowel = (word =~ /[aeiou]/i)
      word[vowel..word.length] + word[0...vowel] + "ay"
    end
  end


end
