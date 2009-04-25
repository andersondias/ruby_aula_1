# 3 métodos em 1 :D
puts gets.chomp

# tudo é método

puts 'hello '.+ 'world'
puts (10.* 9).+ 9

# métodos legais

puts 'Hello World!'.reverse

letras = 'aAbBcCdDeE'
puts letras.upcase
puts letras.downcase
puts letras.swapcase
puts letras.capitalize
puts ' a'.capitalize
puts letras

# criando seus métodos
# muita repetição

gato = 30
urso = 100
dragao = 500

while gato > 0
  puts 'Com quanta força você quer atacar o gato?'
  forca = gets.to_i
  pontos = rand forca
  gato -= pontos
  puts "Você tirou #{pontos} de vida do gato!"
end

while urso > 0
  puts 'Com quanta força você quer atacar o urso?'
  forca = gets.to_i
  pontos = rand forca
  urso -= pontos
  puts "Você tirou #{pontos} de vida do urso!"
end

while dragao > 0
  puts 'Com quanta força você quer atacar o dragão?'
  forca = gets.to_i
  pontos = rand forca
  dragao -= pontos
  puts "Você tirou #{pontos} de vida do dragao!"
end

# def

def digaMoo
  puts 'mooooooo...'
end

digaMoo
digaMoo
puts 'coin-coin'
digaMoo
digaMoo

# parâmetros

def digaMoo(numeroDeMoos)
  puts 'mooooooo...'*numeroDeMoos
end

digaMoo 3
puts 'oink-oink'
digaMoo  #  Isso vai dar erro

# variáveis locais

def dobreEste num
  numVezes2 = num*2
  puts 'O dobro de '+num.to_s+' é '+numVezes2.to_s
end

dobreEste 44
puts numVezes2.to_s

# retorno

valorRetorno = puts 'Este puts retornou:'
puts valorRetorno

def digaMoo numeroDeMoos
  puts 'mooooooo...'*numeroDeMoos
  'yellow submarine'
end

x = digaMoo 2
puts x

# voltando ao nosso primeiro exemplo

gato = 30
urso = 100
dragao = 500

def atacar(monstro)
  puts 'Com quanta força você quer atacar o #{monstro}?'
  forca = gets.to_i
  pontos = rand forca
  puts "Você tirou #{pontos} de vida do monstro!"
  pontos
end

while gato > 0
  gato -= atacar('gato')
end

while urso > 0
  urso -= atacar('urso')
end

while dragao > 0
  dragao -= atacar('dragão')
end
