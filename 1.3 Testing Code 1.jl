##bolean##
@show y = 1 > 2
##equal equal tests for equality##
1 == 1
##test for approximate equality with ≈##
1.00000001 ≈ 1
##Numbers##
typeof(1)
a = 2
b = 1.0
a * b
2a - 4b
##Strings##
x = "Hello World!";
typeof(x)
##Use $ to interpolate a variable/expression## So this just gives what's in ()##
x = 10; y = 20; println("x + y =  $(x+y).")
##Containers##
##Tuples## This creates tuple a2 ##
a2 = (1, 2, 3, 4); typeof(a2)
##Tuples are immutable which means you can’t change their values##

try
    a2[1] = 5;
  catch
    println("Error, can't change value of a tuple.")
  end
 ## Tuples don’t need parentheses (but it’s probably best practice for clarity)##
 
a3 = 5, 6; typeof(a3)
##NamedTuple##
nt = (x = 10, y = 11); typeof(nt)
nt.x
nt.y
##Another way to access x & y from tuple##
nt[:x]
nt[:y];
##Dictionary-- like arrays but with strings too!##
d1 = Dict("class" => "AGEC652", "grade" => 97); ##string class, number grade##
typeof(d1)
keys_d1 = keys(d1) ##gives you types##
values_d1 = values(d1) ##gives you values##
##create your own type!## This creates a new type called FoobarNoType
struct FoobarNoType # This will be immutable by default
    a
    b
    c
  end
  
  newfoo = FoobarNoType(1.3, 2, "plzzz");
  typeof(newfoo)
  newfoo.a
  ##call your type to run it##
RunMyModel(param1, param2, param3, param4, param5);
RunMyModel(modelParameters);
##########Functions###############
##Make a function##
function my_function(argument_1, argument_2)
    # Do something here
  end;
  typeof(my_function)
  function my_other_function()
    # Add something here
  end;
 ##By default, a function will return the last value it evaluated##
  F(1)
  ##
  function F(x)
    result = sin(x^2)
    return result
  end;
  F(1)

##function flip_coordinates(lat, long)
flipped_lat = -lat
flipped_long = -long
return flipped_lat, flipped_long
end;
x1, x2 = flip_coordinates(45, -60)

##Iterating## For values b/w 1 & 10, assign to count => gen random number => if 0.2, print.
for count in 1:10
    random_number = rand()
    if random_number > 0.2
      println("We drew a $random_number.")
    end
  end
##While Loops until false##
  x = 1;
  while x < 50
    x = x * 2
    println("After doubling, x is now equal to $x.")
  end
