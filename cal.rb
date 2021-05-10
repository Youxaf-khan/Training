class Calculator
  def add(num_1, num_2)
     puts  num_1 + num_2
  end

  def subtract(num_1, num_2)
    puts num_1 - num_2
  end

  def multiplication(num_1, num_2)
    puts num_1*num_2
  end

  def division(num_1, num_2)
    if num_2 == 0
      puts "Logical error"
    else
    puts num_1/num_2
  end
end
end

obj = Calculator. new
obj.multiplication(0,1)
obj.add(0,2)
obj.subtract(2,2)
obj.division(4,3)
