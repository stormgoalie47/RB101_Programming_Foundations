arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  hash.map { |_, val| val += 1 }
end

p arr