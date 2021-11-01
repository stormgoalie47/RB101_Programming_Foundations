require "pry"
require "pry-byebug"

def return_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  binding.pry
  sections.each_with_index do |section, idx|
    section.times { uuid += characters.sample }
    uuid += "-" unless idx >= sections.size - 1
  end

  uuid
end

p return_UUID
p return_UUID