=begin
def fizzBuzz
		(0..100).each {|i| puts i%3==0 && i%5==0 ? "FizzBuzz" : i%3==0 ? "Fizz" : i%5==0 ? "Buzz" : i}
end

fizzBuzz()



def fizzBuzz
	for i in 1..100
		imprime = i%3==0 && i%5==0 ? "FizzBuzz" : i%3==0 ? "Fizz" : i%5==0 ? "Buzz" : i
		puts imprime
	end
end

=end
	
#Manera menos compleja

def divisible (x,y)
	x % y == 0
end

def cadena (n)
	imprime = ""

	condiciones = {3 => "Fizz", 5 => "Buzz", 7 => "Pum", 13 => "Casa", 17 => "Patapam"}

	condiciones.each{|key,value| divisible(n,key) ? imprime+=value : imprime = imprime}

	imprime
end

for i in 1..120

	imprimir = cadena(i)

	if imprimir == ""
		puts i
	else
		puts imprimir
	end
end

