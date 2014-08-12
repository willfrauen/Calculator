class Calculator
  #Prompts
  def prompt
    puts "Hello! Please enter a number:"
    @num1 = gets.chomp!
    if @num1.match(/\D/) != nil
      puts "Invalid input! Try again."
      prompt 
    end
    @num1 = @num1.to_i
    function
    puts "Please enter a second number:"
    @num2 = gets.chomp!
    if @num2.match(/\D/) != nil
      puts "Invalid selection! Try again."
      prompt 
    end
    @num2 = @num2.to_i
    if @func == 1
     equation = "#{@num1} + #{@num2}"
     answer = @num1 + @num2
    elsif @func == 2
     equation = "#{@num1} - #{@num2}"
     answer = @num1 - @num2
    elsif @func == 3
     equation = "#{@num1} * #{@num2}"
     answer = @num1 * @num2
    elsif @func == 4
     equation = "#{@num1} / #{@num2}"
     answer = @num1 / (@num2*1.0)
    end
    puts "Your equation is: #{equation}"
    puts "Your answer is: #{answer}"
    answer
    puts "Would you like to use the calculator again? Say 'yes' or 'no'."
    answer = gets.chomp!
    if answer == "yes"
      prompt
    else
      puts "Goodbye! Thank you for using the calculator :)"
      exit
    end
  end

  def function
    puts "What Mathematical function would you like to use? Choose a number:"
    puts "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n"
    @func = gets.chomp!
    if @func.match(/\D/) != nil
      puts "Invalid selection! Try again."
      function
    elsif @func.to_i > 4 || @func.to_i < 1
      puts "Invalid selection! Try again."
      function
    end
    @func = @func.to_i
  end
end

my_calc = Calculator.new
my_calc.prompt