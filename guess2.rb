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
	print "� ������� ����� �� 0 �� 100. ������, �����. "
	x = gets.to_i
	puts "�������: #{i}"
	pop = pop - 1

if x > 0

	if x == y
		puts "������! ��� ����� #{y}."
		exit
	elsif x > y
		puts "��� ����� ������! �������� �������: #{pop}."
	else
		puts "��� ����� ������! �������� �������: #{pop}."
	end
else
	print "������� �����������! ���� ��������."
end
end