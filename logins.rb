def rand_time
  Time.at(rand * Time.now.to_i).year
end


persons = [[2, 'matayo'], [1, 'nico'], [0, 'angelo'], [3, 'luca']]

logins = { # ugly on purpose
  0 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
  1 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
  2 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
  3 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
}

logins.each do |key, year_array|
    counts = Hash.new 0
    year_array.each do |year|
      counts[year] +=1
    end
    puts "#{persons[key][1]}=>#{counts}"
end
