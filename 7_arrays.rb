#1 -> Introdução

[]
[5]
['Olá', 'Tchau']

sabor = "Baunilha" # isso não é um array
[89.9, sabor, [true, false]] # isso é

#2 -> Acessando os elementos do array

nomes = ['Ada', 'Belle', 'Chris', 'Anderson', 'Rafael']

puts nomes
puts nomes[0]
puts nomes[1]
puts nomes[2]
puts nomes[3]
puts nomes[4]
puts nomes[5]  #  Esse está fora do intervalo.

puts nomes[0..1]
puts nomes[1..3]
puts nomes[0, 2]
puts nomes[0, 3]
puts nomes[2, 3]

#3 -> puts, imprimindo arrays na tela

comidas = ['chocolate', 'brigadeiro', 'meio amargo']

puts comidas
puts comidas.to_s
puts comidas.join(', ')
puts comidas.join('  :)  ') + '  8)'

#4 -> shift, pop, unshift, push, first, last

favoritos = []
favoritos.push 'gotas de chuva em rosas'
puts favoritos
favoritos.push 'whisky em gatinhos'

puts favoritos[0]
puts favoritos.first
puts favoritos[-1]
puts favoritos.last
puts favoritos.length

favoritos.unshift "cerejas com sorvete"
puts favoritos
favoritos.unshift "café com café"
puts favoritos.size

puts favoritos.pop
puts favoritos
puts favoritos.length

puts favoritos.shift
puts favoritos
puts favoritos.size

#5 -> reverse

arr = [1,2,3,4,5]
puts arr
puts arr.reverse
puts arr
arr.reverse!
puts arr

#6 -> uniq

arr = [1, 1, 2, 3, 4, 3, 4]
puts arr
puts arr.uniq
puts arr
arr.uniq!
puts arr

#7 -> concat, +, -

arr = [1,2]
puts arr + [3,4]
puts arr
arr.concat [3,4]
puts arr
arr = arr - [2,4]
puts arr

