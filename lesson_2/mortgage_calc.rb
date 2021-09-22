# Need 3 pieces of info: loan amount, annual
# percentage rate (APR), load duration
# Calculate: monthly interest, loan duration in months, monthly payment
# Use m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly, p = loan amount, j = monthly int rate,
# n = loan duration in months

require 'yaml'
MESSAGES = YAML.load_file('mortgage_calc_messages.yml')

def prompt(message)
  puts ">> #{message}"
end

def valid_loan_amount?(loan_amount_str)
  loan_amount_arr = loan_amount_str.split(',')
  loan_amount = loan_amount_arr.join.to_i

  if (loan_amount_str == loan_amount_str.to_i.to_s) &&
     (loan_amount_str.to_i >= 0)
    loan_amount_str.to_i
  elsif loan_amount_str.include?(',') && (loan_amount_arr.length > 1)
    loan_amount if loan_amount > 0
  else
    false
  end
end

def valid_num?(num)
  (num == num.to_i.to_s) && (num.to_i >= 0)
end

def valid_apr?(num)
  (num == num.to_f.to_s) && (num.to_i >= 0)
end

def clear_prompt
  system "clear"
end

def apr_decimal(apr)
  apr.to_f / 100
end

def years_to_months(years)
  years.to_i * 12
end

def apr_monthly_int(apr)
  apr / 12
end

def monthly_mortgage(loan_amount, monthly_int, loan_duration_months)
  loan_amount *
    (monthly_int /
    (1 - (1 + monthly_int)**(-loan_duration_months)))
end

def total_mortgrage(monthly_pay, loan_duration_months)
  monthly_pay * loan_duration_months
end

# I did not write `separate_comma` myself, but it was frustrating me to not
# have commas in output I am not claiming I am thinking to this ability,
# however, I have gone through it and understand what it is doing and was
# introduced to a few more methods here found on stackexchange.com. Also
# would appreciate other methods of doing this!
def separate_comma(number)
  whole, decimal = number.to_s.split(".")
  whole_with_commas = whole.chars.to_a.reverse.each_slice(3)
                           .map(&:join).join(",").reverse
  [whole_with_commas, decimal].compact.join(".")
end

prompt MESSAGES['welcome']
prompt MESSAGES['break']
clear_prompt

loop do
  loan_amount = ''
  loan_amount_str = ''
  loop do
    prompt MESSAGES['loan_amount']
    print '$'
    loan_amount_str = gets.chomp
    loan_amount = valid_loan_amount?(loan_amount_str)

    if loan_amount
      break
    else
      clear_prompt
      prompt MESSAGES['invalid_num']
    end
  end

  clear_prompt

  apr = nil
  loop do
    prompt MESSAGES['apr']
    apr = gets.chomp

    if valid_apr?(apr)
      break
    else
      clear_prompt
      prompt MESSAGES['invalid_num']
    end
  end

  clear_prompt

  loan_duration = nil
  loop do
    prompt MESSAGES['duration']
    loan_duration = gets.chomp

    if valid_num?(loan_duration)
      break
    else
      clear_prompt
      prompt MESSAGES['invalid_num']
    end
  end

  apr = apr_decimal(apr)
  loan_duration_months = years_to_months(loan_duration)
  monthly_int = apr_monthly_int(apr)
  monthly_pay = monthly_mortgage(loan_amount, monthly_int, loan_duration_months)
  total_paid = total_mortgrage(monthly_pay, loan_duration_months)

  clear_prompt

  prompt "The total loan amount is: $#{loan_amount_str}"
  prompt "The APR is: #{apr * 100}%"
  prompt "The loan duration is: #{loan_duration_months} months"
  prompt "The monthly interest rate is: #{(monthly_int * 100).round(2)}%"
  prompt "The monthly payment is: $#{separate_comma(monthly_pay.round(2))}"
  prompt "The total paid will be $#{separate_comma(total_paid.round(2))}"

  puts
  prompt MESSAGES['break']
  prompt MESSAGES['again']
  answer = gets.chomp.downcase
  break if answer != 'y'

  clear_prompt
end

prompt MESSAGES['goodbye']
