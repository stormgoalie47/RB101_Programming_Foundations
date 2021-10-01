require 'yaml'
MESSAGES = YAML.load_file('rock_paper_scissors_messages.yml')

WIN_CASES = {
  'rock' => { shorthand: 'r', beats: ['scissors', 'lizard'] },
  'paper' => { shorthand: 'p', beats: ['rock', 'spock'] },
  'scissors' => { shorthand: 'sc', beats: ['paper', 'lizard'] },
  'lizard' => { shorthand: 'l', beats: ['spock', 'paper'] },
  'spock' => { shorthand: 'sp', beats: ['scissors', 'rock'] }
 } 

VALID_CHOICES = WIN_CASES.keys.map(&:to_s)

def prompt(message)
  puts ">> #{message}"
  puts
end

def clear_prompt
  system "clear"
end

def return_continue
  prompt MESSAGES['continue']
  gets
  clear_prompt
end

def get_rounds
  rounds = ''
  loop do
    prompt MESSAGES['rounds']
    rounds = gets.chomp
    clear_prompt
    if (rounds == rounds.to_i.to_s) && (rounds.to_i > 0)
      return rounds.to_i
    else
      prompt MESSAGES['invalid']
    end
  end
end

def choice_abbreviation(choice)
  WIN_CASES.each do |k, v| 
    if (WIN_CASES[k][:shorthand] == choice) || (k == choice)
      return k
    end
  end
end

def get_choice
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    prompt MESSAGES['abbreviations']
    choice = choice_abbreviation(gets.chomp.downcase)
    clear_prompt

    if VALID_CHOICES.include?(choice)
      return choice
    else
      prompt MESSAGES['invalid']
    end
  end
end

def win?(first, second)
  WIN_CASES[first][:beats].include?(second)
end

def add_score(player, computer, score)
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  end
end

def display_score(score)
  prompt "You: #{score[:player]}\t Computer: #{score[:computer]}"
  return_continue
end

def display_results(player, computer)
  if win?(player, computer)
    prompt MESSAGES['won_round']
  elsif win?(computer, player)
    prompt MESSAGES['lost_round']
  else
    prompt MESSAGES['tie_round']
  end
end

def someone_win_match?(max, score)
  score.has_value?(max)
end

def prompt_end_match(max, score)
  if score[:player] >= max
    prompt MESSAGES['won_match']
    return_continue
  elsif score[:computer] >= max
    prompt MESSAGES['lost_match']
    return_continue
  else
    true
  end
end

VALID_YES_NO = %w(y yes n no)

def play_again?
  loop do
    prompt MESSAGES['play_again']
    answer = gets.chomp.downcase

    next if !VALID_YES_NO.include?(answer)
    if answer.start_with?('n')
      return false
    else
      return true
    end
  end
end

score = {
  player: 0,
  computer: 0
}

def reset_score(scores)
  scores.each { |name, value| scores[name] = 0}
end

clear_prompt
prompt MESSAGES['welcome']
return_continue

prompt MESSAGES['rules']
return_continue

rounds = get_rounds

loop do
  loop do
    choice = get_choice

    computer_choice = VALID_CHOICES.sample

    prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

    add_score(choice, computer_choice, score)

    display_results(choice, computer_choice)

    display_score(score)

    break if someone_win_match?(rounds, score)
  end

  prompt_end_match(rounds, score)

  break unless play_again?
  clear_prompt
  reset_score(score)
end

clear_prompt
prompt MESSAGES['goodbye']
