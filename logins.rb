def rand_time
  Time.at(rand * Time.now.to_i)
end


persons = [[2, 'matayo'], [1, 'nico'], [0, 'angelo'], [3, 'luca']]

logins = { # ugly on purpose
  0 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
  1 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
  2 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
  3 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
}

outputHash = {}
logins.each do |key, year_array|
     counts = Hash.new 0
      year_array.each do |year|
        year_nr = year.year
        counts[year_nr] +=1
      end
    outputHash[persons[key][1]] = counts
end
puts outputHash
