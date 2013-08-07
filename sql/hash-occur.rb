puts "enter the string: "
character_occurence= Hash.new(0)
line = gets
line.each_char do |i|
  if i.downcase =~ /[a-z]/
    character_occurence["#{i}"] += 1
  end
end
puts character_occurence
