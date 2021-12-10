def staggered_case(str)
  idx = 0
  return_str = ''

  str.each_char do |char|
    if idx == 0 || idx.even?
      return_str << char.upcase
    else
      return_str << char.downcase
    end
    idx += 1 if ['a'..'z'].to_a.include?(char) || ['A'..'Z'].to_a.include?(char)
  end
  
  return_str
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'