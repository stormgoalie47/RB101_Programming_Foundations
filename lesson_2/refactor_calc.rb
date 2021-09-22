# asks for 2 numbers
# asks for operation (+ - * /)
# displays result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

LANGUAGE = 'en'

def prompt(message)
  puts ">> #{message}"
end

def valid_int?(num)
  num == num.to_i.to_s
end

def valid_float?(num)
  num == num.to_f.to_s
end

def valid_number?(num)
  valid_int?(num) || valid_float?(num)
end

def oper_message(oper)
  operation = case oper
    when '+' then 'plus'
    when '-' then 'minus'
    when '*' then 'times'
    when '/' then 'divided by'
  end
  
  operation
end

prompt(messages('welcome', LANGUAGE))
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(messages('valid_name'))
  else
    break
  end
end

loop do
  num1 = nil
  loop do
    prompt(messages('first_num'))
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt(messages('valid_num'))
    end
  end

  num2 = nil
  loop do
    prompt(messages('sec_num'))
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt(messages('valid_num'))
    end
  end

  oper_prompt = "What operation would you like to do?
    + addition
    - subtraction
    * multiply
    / divide"

  prompt oper_prompt

  oper = nil
  loop do
    oper = gets.chomp

    if %w(+ - * /).include?(oper)
      break
    else
      prompt(messages('oper_err'))
    end
  end

  prompt num1 + " " + oper_message(oper) + " " + num2 + " ="
  prompt eval"#{num1} #{oper} #{num2}"

  prompt(messages('repeat'))
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt(messages('goodbye'))
