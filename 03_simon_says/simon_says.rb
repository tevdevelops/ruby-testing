#write your code here
def echo word
  word
end

def shout word
  word.upcase
end

def repeat word, num = 2
  final = (word + " ") * num
  return final.strip
end

def start_of_word word, letter
  word[0,letter]
end

def first_word words
  list_of_words = words.split
  list_of_words[0]
end

def titleize word
  little_words = ['or', 'and', 'the', 'at', 'a', 'of', 'over']
  list_of_words = word.split
  count = 0
  final_str = ""
  for word in list_of_words
    if little_words.include?(word) == false
      list_of_words[count] = word.capitalize
    elsif little_words.include?(word) == true and count == 0
      list_of_words[count] = word.capitalize
    end
    final_str += list_of_words[count] + " "
    count += 1
  end

  return final_str.strip
end
