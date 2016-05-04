# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin 
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
  end while !["R", "P", "S"].include?(user_input) 

  begin
    puts "You choose #{user_input}"

  #接下來請把剩下的部份寫出來...


arr = ["R","P","S"]
computer_input = arr.sample

begin 
  puts "Computer choose #{computer_input}"
  puts "So who win?"

def Rock_Paper_Scissors_rules(user_input,computer_input)
  if user_input == computer_input
    puts "You two are Tie!"
  elsif (user_input == "R") && (computer_input == "P")
    puts "Paper beats Rock, You Lose!"
  elsif (user_input == "R") && (computer_input == "S")
    puts "Rock beats Scissors, You Win!"
  elsif (user_input == "P") && (computer_input == "R")
    puts "Paper beats Rock, You Win!"
  elsif (user_input == "P") && (computer_input == "S")
    puts "Scissors beats Paper, You Lose!"
  elsif (user_input == "S") && (computer_input == "R")
    puts "Rock beats Scissors, You Lose!"
  elsif (user_input == "S") && (computer_input == "P")
    puts "Scissors beats Paper, You Win!"
  else
    puts "Call Maintenance!"
  end   
end

result = Rock_Paper_Scissors_rules(user_input,computer_input)
puts result 

  #問使用者是否還要再玩 
  begin
    puts "Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == "N"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "Good Bye! Thanks for playing!"
