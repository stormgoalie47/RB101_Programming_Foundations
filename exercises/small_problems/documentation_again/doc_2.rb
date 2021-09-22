# 2. Assume you have the following code. What will each of the 4 `puts` statements print?
# ```ruby
# require 'date'

# puts Date.civil											# -4712-01-01
# puts Date.civil(2016)								# 2016-01-01
# puts Date.civil(2016, 5)						# 2016-05-01
# puts Date.civil(2016, 5, 13)				# 2016-05-13
# ```

# - Documentation signature for `Date::civil` is: 
# 	- `civil([year=-4712[,month=1[,mday=1[,start=Date::ITALY]]]]) -> date`