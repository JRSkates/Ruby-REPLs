dictionary = {
  :bear => "a creature that fishes in the river for salmon.",
  :river => "a body of water that contains salmon, and sometimes bears",
  :salmon => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both"
  }

puts dictionary[:bear]
# a creature that fishes in the river for salmon.

players = {
  :tennis => ["Sam", "Ed"],
  :squash => ["Mary"],
  :football => ["Mark"]
}

puts players[:tennis]


people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

puts "Enter what category to search: sport or fruit"
user_1 = gets.chomp
puts "Enter what value to search for:"
user_2 = gets.chomp

people.each do |x|

  x.each do |k, v|

    if user_1 == k && user_2 == v
      puts x["name"]
    end
  end
end