# uma proc é como um método guardado num objeto
# o legal é que você pode passar ele de um lugar pro outro

saudacao = Proc.new do
  puts 'Olá!'
end

saudacao.call
saudacao.call
saudacao.call

# parâmetros

voceGostade = Proc.new do |umaBoaCoisa|
  puts 'Eu *realmente* gosto de '+umaBoaCoisa+'!'
end

voceGostade.call 'chocolate'
voceGostade.call 'ruby'

# métodos que recebem procs

def facaUmaCoisaImportante umaProc
  puts 'Todo mundo apenas ESPERE! Eu tenho uma coisa a fazer...'
  umaProc.call
  puts 'Certo pessoal, Eu terminei. Voltem a fazer o que estavam fazendo.'
end

digaOla = Proc.new do
  puts 'olá'
end

digaTchau = Proc.new do
  puts 'tchau'
end

facaUmaCoisaImportante digaOla
facaUmaCoisaImportante digaTchau

# Métodos que retornam procs

def compor proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

quadrado = Proc.new do |x|
  x * x
end

dobre = Proc.new do |x|
  x + x
end

dobreeEleve = compor dobre, quadrado
eleveeDobre = compor quadrado, dobre

puts dobreeEleve.call(5)
puts eleveeDobre.call(5)

# Métodos recebem blocos

def sumario descricaoDoBloco, &bloco
  tempoInicial = Time.now
  bloco.call
  duracao = Time.now - tempoInicial
  puts descricaoDoBloco+': '+duracao.to_s+' segundos'
end

sumario 'dobrando 25000 vezes' do
  numero = 1
  25000.times do
    numero += numero
  end
  puts numero.to_s.length.to_s+' dígitos'
end

sumario 'contando até um milhão' do
  numero = 0
  1000000.times do
    numero = numero + 1
  end
end

# yield

def sumario descricaoDoBloco
  tempoInicial = Time.now
  yield
  duracao = Time.now - tempoInicial
  puts descricaoDoBloco+': '+duracao.to_s+' segundos'
end

sumario 'dobrando 25000 vezes' do
  numero = 1
  25000.times do
    numero += numero
  end
  puts numero.to_s.length.to_s+' dígitos'
end

sumario 'contando até um milhão' do
  numero = 0
  1000000.times do
    numero = numero + 1
  end
end