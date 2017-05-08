#write your code here
def translate word
  pig_word = ""
  vowels = ['a','e','i','o','u', 'A', 'E', 'I', 'O', 'U']
  test_array = word.split
  if test_array.length > 1
    for each_word in test_array
      pig_word += translate(each_word) + ' '
    end
    pig_word = pig_word.strip

  else
    if  vowels.include?(word.downcase[0])
      pig_word = word[0..(word.length)] + 'ay'
    else
      if  vowels.include?(word.downcase[1])
        if word.downcase[0] == 'q' and word.downcase[1] == 'u'
          pig_word = word[2..(word.length)] + word[0..1] + 'ay'
        else
          pig_word = word[1..(word.length)] + word[0] + 'ay'
        end
      elsif word.downcase[1] == 'q' and word.downcase[2] == 'u'
          pig_word = word[3..(word.length)] + word[0..2] + 'ay'
      elsif vowels.include?(word.downcase[2])
        pig_word = word[2..(word.length)] + word[0..1] + 'ay'
      else
        pig_word = word[3..(word.length)] + word[0..2] + 'ay'
      end
    end
  end
end
