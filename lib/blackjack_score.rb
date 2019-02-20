# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack"]

def blackjack_score(hand)
  hand.map! do |card|
    if card == "King" || card == "Queen" || card == "Jack"
      card = 10
    else
      card
    end
  end

  score = hand.sum
  puts score

  #lets Ace equal 11 if the 1 value total is less than 11
  if hand.include? 1
    if score < 12
      puts "this is true"
      score += 10
    end
  end

  return score
end

blackjack_score([1, 3, 6])
