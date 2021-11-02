require "pry"
require "pry-byebug"

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
VALID_DIMENSION = [3, 4, 5, 6, 7, 8, 9]

WIN_SCORE = 5

VALID_YES_NO = %w(yes y no n)

def valid_int?(str)
  str.to_i.to_s == str
end

def determine_winning_rows(dimension)
  winning_rows = []

  dimension.times do |row|
    dimension.times do |col|
      start_num = (dimension * row) + 1 + col
      if col + 3 <= dimension
        winning_rows << [start_num, start_num + 1, start_num + 2]
      end
    end
  end

  winning_rows
end

def determine_winning_col(dimension)
  winning_cols = []

  dimension.times do |col|
    dimension.times do |row|
      start_num = (dimension * col) + 1 + row
      if col + 3 <= dimension
        winning_cols << [start_num,
                         start_num + dimension,
                         start_num + (dimension * 2)]
      end
    end
  end

  winning_cols
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def determine_winning_diag(dimension)
  winning_diag = []

  dimension.times do |col|
    dimension.times do |row|
      start_num = (dimension * col) + 1 + row
      # row below to left
      if row - 2 >= 0 && (col + 3 <= dimension)
        winning_diag << [start_num,
                         start_num + dimension - 1,
                         start_num + (dimension * 2) - 2]
      # row below to right
      elsif (row + 3 <= dimension) && (col + 3 <= dimension)
        winning_diag << [start_num,
                         start_num + dimension + 1,
                         start_num + (dimension * 2) + 2]
      end
    end
  end

  winning_diag
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def determine_winning_lines(dimension)
  determine_winning_rows(dimension) +
    determine_winning_col(dimension) +
    determine_winning_diag(dimension)
end

def prompt(msg)
  puts "=> #{msg}"
end

def return_to_continue
  prompt "Press return to continue!"
  gets
end

def get_first_move
  prompt "Would you like to go first? (y/n)."
  prompt "Type anything else to let computer decide!"
  answer = gets.chomp.downcase
  move_first = if answer.start_with?('y') && VALID_YES_NO.include?(answer)
                 "Player"
               elsif answer.start_with?('n') && VALID_YES_NO.include?(answer)
                 "Computer"
               else
                 ["Player", "Computer"].sample
               end
end

def get_board_size
  loop do
    prompt "What size board would you like to play on? Enter 3-9"
    dimension = gets.chomp
    if VALID_DIMENSION.include?(dimension.to_i) && valid_int?(dimension)
      return dimension.to_i
    end

    system "clear"
    prompt "Invalid number, please try again"
  end
end

def display_markers
  system "clear"
  puts "You: #{PLAYER_MARKER}"
  puts "Computer: #{COMPUTER_MARKER}"
  puts ""
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(brd, dimension)
  display_markers

  dimension.times do |row|
    row_moves = ""
    divider = ""
    square_row_num = ""
    blank_row = ""
    dimension.times do |col|
      start_row_num = (row * dimension) + 1

      if (col + 1) < dimension
        row_moves += "   #{brd[start_row_num + col]}   |"
        divider += "-------+"
        blank_row += "       |"
        square_row_num += if start_row_num + col < 10
                            "#{start_row_num + col}      |"
                          else
                            "#{start_row_num + col}     |"
                          end
      else
        row_moves += "   #{brd[start_row_num + col]}    "
        divider += "--------"
        square_row_num += (start_row_num + col).to_s
      end
    end

    puts square_row_num
    puts row_moves
    puts blank_row
    puts divider unless (row + 1) >= dimension
  end
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def initialize_board(dimension)
  new_board = {}
  (1..(dimension**2)).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def joinor(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})."
    square = gets.chomp
    break if empty_squares(brd).include?(square.to_i) && valid_int?(square)
    prompt "Sorry, that is not a valid choice."
  end

  brd[square.to_i] = PLAYER_MARKER
end

def computer_offense(square, brd)
  WINNING_LINES.each do |line|
    square = at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  square
end

def computer_defense(square, brd)
  WINNING_LINES.each do |line|
    square = at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end

  square
end

def computer_places_piece!(brd)
  square = nil

  square = computer_offense(square, brd)
  square ||= computer_defense(square, brd)
  square ||= 5 if empty_squares(brd).include?(5)
  square ||= empty_squares(brd).sample

  brd[square] = COMPUTER_MARKER
end

def at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def place_piece!(brd, player)
  case player
  when "Player" then player_places_piece!(brd)
  when "Computer" then computer_places_piece!(brd)
  end
end

def alternate_player(player)
  return "Player" if player == "Computer"
  return "Computer" if player == "Player"
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).all?(PLAYER_MARKER)
      return 'Player'
    elsif brd.values_at(*line).all?(COMPUTER_MARKER)
      return 'Computer'
    end
  end
  nil
end

def winner_print(brd)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won!"
  else
    prompt "It's a tie!"
  end
end

def print_score(scores)
  prompt "Score"
  puts "\t You: #{scores[:player]}"
  puts "\t Computer: #{scores[:computer]}"
end

def add_score(scores, brd)
  scores[:player] += 1 if detect_winner(brd) == "Player"
  scores[:computer] += 1 if detect_winner(brd) == "Computer"
end

def next_game
  system "clear"
  answer = ""
  loop do
    prompt "Play again? (y or n)"
    answer = gets.chomp.downcase
    break if VALID_YES_NO.include?(answer)
    system "clear"
    prompt "Invalid option. Try again."
  end
  return true if answer.start_with?('y')
  false
end

system "clear"
prompt "Welcome to Tic-Tac-Toe!\n\n"
prompt "Here, you will be able to play against the computer.\n\n"
prompt "The board can range from 3x3 to 9x9.\n\n"
prompt "You will play against the computer until one of you reaches 5 wins."
prompt "Beware, though, as the computer knows offense and defense!\n\n"
prompt "Good luck!!!\n\n"
return_to_continue

loop do
  system "clear"
  score = { player: 0, computer: 0 }
  start_player = get_first_move
  board_dimension = get_board_size

  loop do
    board = initialize_board(board_dimension)
    WINNING_LINES = determine_winning_lines(board_dimension)
    current_player = start_player

    loop do
      display_board(board, board_dimension)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, board_dimension)
    winner_print(board)
    add_score(score, board)
    print_score(score)
    return_to_continue

    break if score[:player] >= WIN_SCORE || score[:computer] >= WIN_SCORE
  end

  break unless next_game
end

system "clear"
prompt "Thanks for playing! Good bye!"
