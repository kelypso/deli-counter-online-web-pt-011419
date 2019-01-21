katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0 
    "The line is currently empty."
  else
    message = "The line is currently: "
    katz_deli.each_with_index do |name, number|
      message += "#{number.to_i + 1}. #{name}"
    end
    puts "#{message}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name 
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(line)
  if line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.first}."
  end
  line = line.shift
end

