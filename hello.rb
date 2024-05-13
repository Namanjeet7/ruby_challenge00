# Name : Namanjeet Singh

# Constants for tax rates
GST_RATE = 0.05
PST_RATE = 0.07

# Ask user for subtotal
puts "Enter the subtotal: $"
sub_total = gets.to_f

# Calculate taxes
gst = sub_total * GST_RATE
pst = sub_total * PST_RATE

# Calculate grand total
grand_total = sub_total + gst + pst

# Print details
puts "Subtotal: $#{'%.2f' % sub_total.to_f}"
puts "PST: $#{'%.2f' % pst} - #{(PST_RATE * 100).to_i}%"
puts "GST: $#{'%.2f' % gst} - #{(GST_RATE * 100).to_i}%"
puts "Grand Total: $#{'%.2f' % grand_total}"

# Determine message based on grand total
message = if grand_total <= 5.00
  "Pocket Change"
elsif grand_total > 5.00 && grand_total < 20.00
  "Wallet Time"
else
  "Charge It!"
end

puts message
