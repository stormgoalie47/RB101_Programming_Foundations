SUITS = %w(H D C S)
FACE_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
MATCH_GOAL = 5
VALID_YES_NO = %w(y yes n no)
HIT = %w(h hit)
STAY = %w(s stay)

def prompt(msg)
  puts ">>\t #{msg}\n\n"
end

def return_to_continue
  prompt "Press return to continue"
  gets
  system "clear"
end

def initialize_deck
  deck = []
  SUITS.each do |suit|
    FACE_VALUES.each do |value|
      deck << [suit, value]
    end
  end
  deck.shuffle!
end

def deal_cards!(cards, hand)
  2.times do
    hand[:player] << cards.shift
    hand[:dealer] << cards.shift
  end
end

def player_hand(hand)
  player_hand_arr = []
  hand.each { |card| player_hand_arr << card[1] }
  player_hand_arr.join(", ")
end

def display_cards(hand)
  prompt "Current hands:"
  prompt "Dealer: unknown, #{hand[:dealer][1][1]}"
  prompt "Player: #{player_hand(hand[:player])}
         for a total of #{score_cards(hand[:player])}."
end

def display_all_cards(hand)
  system "clear"
  prompt "Current hands:"
  prompt "Dealer: #{player_hand(hand[:dealer])}
         for a total of #{score_cards(hand[:dealer])}."
  prompt "Player: #{player_hand(hand[:player])}
         for a total of #{score_cards(hand[:player])}."
end

def player_turn!(cards, hand)
  loop do
    break if score_cards(hand[:player]) == SCORE_GOAL
    prompt "Would you like to hit(h) or stay(s)?"
    answer = gets.chomp.downcase
    system "clear"

    if HIT.include?(answer)
      hand[:player] << cards.shift
    elsif STAY.include?(answer)
      break
    else
      prompt "Invalid option. Try again.\n"
    end

    display_cards(hand)
    break if bust?(hand[:player])
  end
  system "clear"
end

def dealer_turn!(cards, hand)
  loop do
    break if score_cards(hand[:dealer]) >= DEALER_STAY
    break if bust?(hand[:dealer])
    hand[:dealer] << cards.shift
  end
end

def determine_ace_score(hand, score)
  num_aces = hand.flatten.count("A")
  if num_aces > 1
    score += (num_aces - 1)
  end
  if num_aces > 0 && score + 11 <= SCORE_GOAL
    score += 11
  elsif num_aces > 0
    score += 1
  end

  score
end

def score_cards(hand)
  score = 0
  hand.each do |card|
    if FACE_VALUES[0..8].include?(card[1])
      score += card[1].to_i
    elsif FACE_VALUES[9..11].include?(card[1])
      score += 10
    end
  end

  score = determine_ace_score(hand, score)
end

def bust?(hand)
  score_cards(hand) > SCORE_GOAL
end

def determine_winner(hand)
  player_score = score_cards(hand[:player])
  dealer_score = score_cards(hand[:dealer])

  return :dealer if bust?(hand[:player])
  return :player if bust?(hand[:dealer])
  return :draw if player_score == dealer_score
  return :dealer if dealer_score > player_score
  :player
end

def display_winner(winner)
  case winner
  when :dealer
    prompt "Dealer won..."
  when :player
    prompt "You won!!!"
  when :draw
    prompt "You basically just kissed your sister... (It's a tie)"
  end
end

def play_again?
  answer = ""

  loop do
    prompt "Would you like to play again? (y/n)"
    answer = gets.chomp.downcase
    break if VALID_YES_NO.include?(answer)
    system "clear"
    prompt "Invalid input. Try again."
  end

  return true if answer.start_with?('y')
  false
end

def add_score(score, winner)
  case winner
  when :dealer then score[:dealer] += 1
  when :player then score[:player] += 1
  end
end

def display_score(score)
  prompt "Current score
          Dealer: #{score[:dealer]}
          Player: #{score[:player]}"
end

def get_score_goal(answer)
  custom_goal = nil
  if answer
    loop do
      prompt "What number would you like to play to? (i.e. 21, 31, 41, etc.)"
      custom_goal = gets.chomp
      break if valid_goal?(custom_goal)
      system "clear"
      prompt "Incorrect value, try again."
    end
  else
    custom_goal = 21
  end
  system "clear"
  custom_goal.to_i
end

def valid_int?(number)
  number.to_i.to_s == number
end

def valid_goal?(number)
  valid_int?(number) && number.to_i % 10 == 1 && number.to_i >= 21
end

def change_goal?
  system "clear"
  answer = nil
  loop do
    prompt "Currently, the game is set to play to 21
          Would you like to change it to a different number? (y/n)"
    answer = gets.chomp
    break if VALID_YES_NO.include?(answer)
    system "clear"
    prompt "Invalid choice. Try again."
  end
  answer.start_with?('y')
end

system "clear"

prompt "Welcome to 21 (or whatever number you may choose!)"
prompt "Below are the rules:"
prompt %(The goal is to get to the specified number without going over!
         You will go first, knowing your cards and one of the dealer's cards.
         You must make the decision to hit or stay.
         If you go over the desired number \(bust\), you lose...
         The dealer will go until it reaches 4 below the desired number.
         \t\(i.e. for 21, the dealer will stop once it reaches 17\)
         You will play until you or the dealer reaches 5!")
prompt "GOOD LUCK!!!"

return_to_continue

SCORE_GOAL = get_score_goal(change_goal?)
DEALER_STAY = SCORE_GOAL - 4

loop do
  system "clear"
  scores = { player: 0, dealer: 0 }
  winner = nil

  loop do
    deck = initialize_deck
    hands = { player: [], dealer: [] }
    deal_cards!(deck, hands)
    display_cards(hands)
    display_score(scores)

    loop do
      player_turn!(deck, hands)

      display_all_cards(hands)

      break if bust?(hands[:player])

      dealer_turn!(deck, hands)
      display_all_cards(hands)
      break
    end

    winner = determine_winner(hands)
    display_winner(winner)
    add_score(scores, winner)
    display_score(scores)
    return_to_continue
    break if scores.values.include?(MATCH_GOAL)
  end

  display_winner(winner)
  break unless play_again?
end

system "clear"
prompt "Thank you for playing!"
