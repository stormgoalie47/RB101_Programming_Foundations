MINUTES_HOUR = 60
HOURS_DAY = 24
MINUTES_DAY = HOURS_DAY * MINUTES_HOUR

def after_midnight(time)
  hour, minute = time.split(':')
  ((hour.to_i % 24) * MINUTES_HOUR) + minute.to_i
end

def before_midnight(time)
  (MINUTES_DAY - after_midnight(time)) % MINUTES_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
