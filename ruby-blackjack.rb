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
    return "hit"
  elsif turn == "stick"
    return "stick"
  else 
    move
  end
end

def score(array)
  values = {
    "two" => 2, "three" => 3, "four" => 4,
    "five" => 5, "six" => 6, "seven" => 7,
    "eight" => 8, "nine" => 9, "ten" => 10,
    "jack" => 10, "queen" => 10, "king" => 10,
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
  curr_move = move
  while curr_move == "hit"
    hand.push(random_card)
    if score(hand) <= 21
      puts "Score so far: #{score(hand)}"
    elsif curr_move == "stick"
      break
    else
      puts "You busted with: #{score(hand)}"
      break
    end
    
    curr_move = move
  end
  puts "You scored: #{score(hand)}" unless score(hand) > 21
end

run_game