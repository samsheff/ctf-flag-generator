# Ensure we have enough args
if not ARGV[0] or not ARGV[1]
  puts "Usage: ruby flag_generator.rb [Number of Flags] [Number of Symbols per Flag]"
  exit
end
# If so, store args in their proper variables and ensure they are the proper types
number_of_flags = ARGV[0].to_i
flag_length = ARGV[1].to_i

# Create Array of Symbols for Flags
symbols = [('a'..'z'), ('A'..'Z'), (0..9)].map { |i| i.to_a }.flatten

# Generate n Flags and Print them to the Console
number_of_flags.times  do
  puts (0...flag_length).map { symbols[rand(symbols.length)] }.join
end
