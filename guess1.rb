# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "� ������� ����� �� 0 �� 100. ������, �����. "
x = gets.to_i
y = rand (0..100)

if x == y
	print "������!"
elsif x > y
	print "��� ����� ������: #{y}"
else
	print "��� ����� ������: #{y}"
end