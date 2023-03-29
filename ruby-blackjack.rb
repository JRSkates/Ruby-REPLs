def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]
  cards[rand(13)]
end
random_card

def move
  puts "hit or stick?"
  turn = gets.chomp
  if turn == "hit"
    "hit"
  elsif turn == "stick"
    "stick"
  else
    move
  end
end

def score(array)
  values = {
    "two" => 2,
    "three"=> 3,
    "four" => 4,
    "five"=> 5,
    "six"=> 6,
    "seven"=> 7,
    "eight" => 8,
    "nine" => 9,
    "ten" => 10,
    "jack" => 10,
    "queen" => 10,
    "king" => 10,
    "ace" => 11
    }
  total = 0
  array.each do |card|
    total += values[card]
  end
  total
end

def run_game
  hand = []
  currMove = move
  while true do
    if currMove == "hit" && score(hand) <= 21
      hand.push(random_card)
      puts "Score so far: #{score(hand)}"
    elsif score(hand) > 21
      puts "you busted with #{score(hand)}"
      break
    elsif currMove == "stick"
      puts "You scored: #{score(hand)}"
      break
    end
    currMove = move
  end
end

run_game