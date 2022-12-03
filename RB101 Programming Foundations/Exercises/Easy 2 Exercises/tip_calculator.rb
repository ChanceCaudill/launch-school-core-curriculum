=begin
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.
=end
puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_rate = gets.chomp.to_f / 100
tip_rate = tip_rate.round(2)

tip = bill * tip_rate
bill_total = bill + tip

puts "The tip is #{tip.round(2)}"
puts "The total is #{bill_total.round(2)}"