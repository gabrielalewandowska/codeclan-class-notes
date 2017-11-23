def add_array_lengths(array1, array2)
  sum = array1.length + array2.length
  return sum
end


def sum_array(numbers)
  # sum = 0
  # numbers.each {
  #   |number| sum += number
  # }
  # return sum

  # return numbers.sum

  sum = 0
  for index_value in numbers
    sum += index_value
  end
  return sum
end

def find_item(array, item)
  # return true if array.include?(item)
  # else return false
  truth_value = false
  for string in array
    truth_value = true if string == item
  end

  return truth_value
end

def get_first_key(hash)
  keys = hash.keys
  return keys[0]
end
