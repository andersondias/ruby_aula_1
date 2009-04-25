#1

[]
[5]
['Olá', 'Tchau']

sabor = "Baunilha" # isso não é um array
[89.9, sabor, [true, false]] # isso é

#2

nomes = ['Ada', 'Belle', 'Chris']

puts nomes
puts nomes[0]
puts nomes[1]
puts nomes[2]
puts nomes[3]  #  Esse está fora do intervalo.

#3 each

monstros = ['sapos', 'lagartos', 'dragões']

monstros.each do |nome|
  puts "Cuidado! Tem #{nome} espalhados por aqui!"
end

#4 times

3.times do
  puts 'Hip-Hip-Hurra!'
end

# puts

comidas = ['chocolate', 'brigadeiro', 'meio amargo']

puts comidas
puts
puts comidas.to_s
puts
puts comidas.join(', ')
puts
puts comidas.join('  :)  ') + '  8)'

200.times do
  puts []
end

# pop, push, last

favoritos = []
favoritos.push 'gotas de chuva em rosas'
favoritos.push 'whisky em gatinhos'

puts favoritos[0]
puts favoritos.last
puts favoritos.length

puts favoritos.pop
puts favoritos
puts favoritos.length