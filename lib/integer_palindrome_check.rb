# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  # raise NotImplementedError
  if number == nil
    return false
  end

  return palindrome_check(number.to_s)
end

def palindrome_check(my_phrase)
  if my_phrase != nil
    i = 0
    j = my_phrase.length - 1
  else
    return false
  end

  while i <= j
    if my_phrase[i] == " "
      until my_phrase[i] != " "
        i+=1
      end
    end

    if my_phrase[j] == " "
      until my_phrase[j] != " "
        j-=1
      end
    end

    if my_phrase[i] == my_phrase[j]
        i += 1
        j -= 1
    else
      return false
    end
  end

  return true
end
