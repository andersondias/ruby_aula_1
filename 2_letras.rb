#1

'Hello.'
'Ruby rocks.'
'5 is my favorite number... what is yours?'
'Snoopy says #%^?&*@! when he stubs his toe.'
'     '
''

puts 'Hello, world!'
puts ''
puts 'Good-bye.'

#2 -> Aritmética com strings

puts 'I like' + 'apple pie.'
puts 'I like ' + 'apple pie.'
puts 'I like' + ' apple pie.'
puts 'blink ' * 4

#3 -> 12 vs '12'

puts  12  +  12
puts '12' + '12'
puts '12  +  12'

#4 -> Coisas que não funcionam

puts '12' + 12
puts '2' * '5'

#5 -> Escapando e interpolando

puts 'You\'re swell!'
puts 'backslash at the end of a string:  \\'
puts 'up\\down'
puts 'up\down'

puts "1 + 2 = #{1 + 2}"
puts '1 + 2 = #{1 + 2}'

#6 -> Strings em múltiplas linhas

print <<HERE
Double quoted \
here document.
It is #{Time.now}
HERE

print <<-’THERE’
  This is a single quoted.
  The above used #{Time.now}
  THERE

#7 -> Métodos úteis

frase = "O rato roeu a roupa do rei de roma"
puts frase.gsub("r", "p")
puts frase
frase.gsub!("r", "p")
puts frase

nome = "Anderson Dias de Araujo Ferreira"
puts nome.upcase
puts nome
nome.upcase!
puts nome

nome.downcase!
puts nome
nome.capitalize!
puts nome
nome.swapcase!
puts nome

puts "string com 20 letras".size
puts "string com 20 letras".length

puts "oooooooooooooowww man!".squeeze

titulo = "Titulo".center(50)
puts titulo.inspect
puts titulo.lstrip.inspect
puts titulo.rstrip.inspect
puts titulo.strip.inspect

titulo.strip!
puts titulo.reverse

"Não Vazia".empty?
" ".empty?
"".empty?