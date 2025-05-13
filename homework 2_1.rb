array = [7, 7, 2, 2, 1, 3]

frequencies = array.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }

max_frequency = frequencies.values.max

most_frequent = frequencies.filter { |_, freq| freq == max_frequency }.keys

puts "Найчастіші елементи: #{most_frequent.join(', ')}"
