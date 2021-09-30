require 'yaml'
MESSAGES = YAML.load_file('rock_paper_scissors_messages.yml')

WIN_CASES = {
  rock: %w(scissors lizard),
  paper: %w(rock spock),
  scissors: %w(paper lizard),
  spock: %w(rock scissors),
  lizard: %w(paper spock)
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
    rounds = gets.chomp
    if (rounds == rounds.to_i.to_s) && (rounds.to_i > 0)
      break
    else
      prompt MESSAGES['invalid']
    end
  end
  rounds.to_i
end

def choice_abbreviation(choice)
  if choice.start_with?('r')
    'rock'
  elsif choice.start_with?('p')
    'paper'
  elsif choice.start_with?('sc')
    'scissors'
  elsif choice.start_with?('sp')
    'spock'
  elsif choice.start_with?('l')
    'lizard'
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
      break
    else
      prompt MESSAGES['invalid']
    end
  end
  choice
end

def win?(first, second)
  WIN_CASES[first.to_sym].include?(second)
end

def add_score(player, computer, score)
  if win?(player, computer)
    score[0] += 1
  elsif win?(computer, player)
    score[1] += 1
  else
    score[2] += 1
  end
end

def display_score(score)
  prompt "You: #{score[0]}\t Computer: #{score[1]}"
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

def prompt_end_match(max, score)
  if score[0] >= max
    prompt MESSAGES['won_match']
    return_continue
    false
  elsif score[1] >= max
    prompt MESSAGES['lost_match']
    return_continue
    false
  else
    true
  end
end

def play_again?
  loop do
    prompt MESSAGES['play_again']
    answer = gets.chomp.downcase
    if answer.start_with?('n')
      return false
    elsif answer.start_with?('y')
      return true
    else
      prompt MESSAGES['invalid']
      next
    end
  end
end

clear_prompt
prompt MESSAGES['welcome']
return_continue

prompt MESSAGES['rounds']
rounds = get_rounds
clear_prompt

score = [0, 0, 0]

loop do
  loop do
    choice = get_choice

    computer_choice = VALID_CHOICES.sample

    prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

    add_score(choice, computer_choice, score)

    display_results(choice, computer_choice)

    display_score(score)

    break if !prompt_end_match(rounds, score)
  end

  break unless play_again?
  clear_prompt
end

clear_prompt
prompt MESSAGES['goodbye']