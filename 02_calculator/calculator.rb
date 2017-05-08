#write your code here
def add num1, num2
  num1 + num2
end
def subtract num1, num2
  num1 - num2
end
def sum list
  if list.length == 0
    return 0
  elsif list.length == 1
    return list[0]
  else
    temp = 0
    for num in list
      temp += num
    end
    return temp
  end
end
def multiply list
  answer = 1
  for num in list
    answer *= num
  end
  return answer
end

def power num1, num2
  num1 ** num2
end

def factorial num
  if num == 1 or num == 0
    return 1
  else
    num * factorial(num - 1)
  end
end
