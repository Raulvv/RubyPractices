def fizzBuzz
	for i in 1..100
		imprime = i%3==0 && i%5==0 ? "FizzBuzz" : i%3==0 ? "Fizz" : i%5==0 ? "Buzz" : i
		puts imprime
	end
end

=begin
	
Manera menos compleja

for i in 1..100
	imprime = i
	if i%3==0 && i%5==0
		imprime = "FizzBuzz"
		else if i%3==0
			imprime = "Fizz"
			else if i%5==0
				imprime = "Buzz"
	end
	puts imprime
end