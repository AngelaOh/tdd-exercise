# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack"]

def blackjack_score(hand)

  #   num_of_cards = rand(2..5)
  #   hand = []
  #   num_of_cards.times do
  #     random_index = rand(0..VALID_CARDS.length - 1)
  #     hand << VALID_CARDS[random_index]
  #   end

  hand.map! do |card|
    if card == "King" || card == "Queen" || card == "Jack"
      card = 10
    else
      card
    end
  end

  score = hand.sum

  #lets Ace equal 11 if the 1 value total is less than 11
  if hand.include? 1 && score <= 11
    score = score + 10
  end

  return score
end
