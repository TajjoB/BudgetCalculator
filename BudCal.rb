#Budget Calculator
puts "How much is your net Income per annum?"
begin
  net_income = gets.chomp
  net_income = Integer(net_income)
rescue ArgumentError
  puts "Not a valid number!"
  puts "Please enter a valid numeric Income per annum to continue!"
  retry
end
#########
net_income.to_f

puts "Do you [own], [mortgage] or [rent] your house?"
live_situation = gets.chomp
live_situation.downcase!

    
puts ""



if live_situation == "rent"
  car_value = (net_income / 3)
  puts "Spend no more than #{car_value.round(2)} on your car!"

  utility_value = net_income * 0.0333 / 12
  puts "Ensure utilities cost no more than #{utility_value.round(2)} per month!"

  food_value = net_income * 0.0333 / 12
  puts "Spend #{food_value.round(2)} per month on food."

  upkeep_value = net_income * 0.0333 / 12
  puts "Spend #{upkeep_value.round(2)} per month on toiletries."
    @live_value = (net_income * 0.333) / 12
    @save_value = (net_income * 0.233) / 12
    puts "Ensure your rent does not exceed #{@live_value.round(2)} per month!" 
    puts "Save at least #{@save_value.round(2)} per month."
elsif live_situation == "mortgage"
  car_value = (net_income / 3)
  puts "Spend no more than #{car_value.round(2)} on your car!"

  utility_value = net_income * 0.0333 / 12
  puts "Ensure utilities cost no more than #{utility_value.round(2)} per month!"

  food_value = net_income * 0.0333 / 12
  puts "Spend #{food_value.round(2)} per month on food."

  upkeep_value = net_income * 0.0333 / 12
  puts "Spend #{upkeep_value.round(2)} per month on toiletries."
  @live_value = (net_income * 0.333) / 12
  @save_value = (net_income * 0.233) / 12
  puts "Ensure your mortgage does not exceed #{@live_value.round(2)} per month!"

  puts "Save at least #{@save_value.round(2)} per month."
elsif live_situation == "own"
  puts "What is the current value of your house?"
  begin
    house_value = gets.chomp
    house_value = Integer(house_value)
  rescue ArgumentError
    puts "Not a valid number!"
    puts "Please enter a valid numeric value to continue!"
    retry
  end

  puts "Here is your calculated budget:"
  play_money = house_value/16
  ###################
  car_value = (net_income / 3)
  puts "Spend no more than #{car_value.round(2)} on your car!"

  utility_value = net_income * 0.0333 / 12
  puts "Ensure utilities cost no more than #{utility_value.round(2)} per month!"

  food_value = net_income * 0.0333 / 12
  puts "Spend #{food_value.round(2)} per month on food."

  upkeep_value = net_income * 0.0333 / 12
  puts "Spend #{upkeep_value.round(2)} per month on toiletries."
  @save_value = (net_income * 0.56) / 12
  puts "Save at least #{@save_value.round(2)} per month."
  puts ""
  puts "You can buy cash (if you can afford to) and maintain a luxury such as sports car or boat if it doesnt exceed #{play_money}!!!"
else
  puts "Living situation not stated correctly! Program ended! Restart program and state 'rent', 'mortgage' or 'own'!"
puts "Thank you for using my program!"

end
