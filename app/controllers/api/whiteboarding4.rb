# #whiteboarding
# def odd_sum (input)
#   answer = 0
#   input.each do |current|
#     if current % 2  == 1
#       answer +=  current
#     end
#   end
#   p answer
#   return answer
# end

# p odd_sum([1,3,3,4])

def riffle_shuffle ( input1, input2 )
  # index = 0
  answer = []
  length = input1.length 
  for (index == 0, index < input.length, index += 1)
  # while ( index < length)
    answer << input1[index] 
    answer << input2[index]
    # index += 1
  end
  p answer
  return answer
end

riffle_shuffle([1,2,3,4], ["a", "b", "b", "d"] )