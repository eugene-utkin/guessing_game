# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "Я загадал число от 0 до 100. Угадай, какое. "
x = gets.to_i
y = rand (0..100)

if x == y
	print "Угадал!"
elsif x > y
	print "Мое число меньше: #{y}"
else
	print "Мое число больше: #{y}"
end