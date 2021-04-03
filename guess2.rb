# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

y = rand (0..100)
pop = 10
1.upto (10) do |i|
	print "Я загадал число от 0 до 100. Угадай, какое. "
	x = gets.to_i
	puts "Попытка: #{i}"
	pop = pop - 1

if x > 0

	if x == y
		puts "Угадал! Это число #{y}."
		exit
	elsif x > y
		puts "Мое число меньше! Осталось попыток: #{pop}."
	else
		puts "Мое число больше! Осталось попыток: #{pop}."
	end
else
	print "Попытки закончились! Игра окончена."
end
end