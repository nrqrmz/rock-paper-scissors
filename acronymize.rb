def acronymize(string)
  # pseudo-code
  # 1. Divide into words the string
  # 2. Define an array to contain the initial letter of each word
  # 3. Take the initial letter of each word and uppercase it and store it in the array
  # 4. Join the array items in a single string and return it
  arr = []

  words = string.split

  for word in words do
    arr << word[0].upcase
  end

  arr.join
end

p acronymize('Away from keyboard')
puts
puts acronymize('') == ''
puts acronymize('Frequently Asked Questions') == 'FAQ'
puts acronymize('work FROM hOMe') == 'WFH'
