hour = 8

matin = (hour >= 8 && hour < 12)
aprem = (hour >= 14 && hour < 18)

if matin || aprem
  puts "open"
else
  puts "close"
end
