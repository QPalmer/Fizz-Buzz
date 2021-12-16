# get input from user
# return "fizz" if input is divisble by 3
# return "buzz" if input is divisible by 5
# return "fizzbuzz" if input is divisible by both

def fizz_buzz(x)
  if x % 3 == 0
    # if multiple of 3, check if multiple of 5
    fizzy x
  elsif x % 5 == 0 
    puts("Buzz")
  else
    puts("#{x}")
  end
end   

def fizzy(x)
  if x % 5 == 0
    puts("FizzBuzz")
  else
    puts("Fizz")
  end 
end

def fizzbuzz_run
  print("Enter an integer \n")
  while true
    user_input = gets.chomp
    print("> ")
    number = user_input.to_i
    if user_input == "q" or user_input == "exit"
      break
    elsif number == 0
    # any string '.to_i' returns 0
      puts("#{user_input}? That's interesting...")
    else
      fizz_buzz number
    end 
  end
end

fizzbuzz_run
