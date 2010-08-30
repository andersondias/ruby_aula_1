# 1 -> Introdução

{}
{'nome' => 'Anderson', 'sobrenome' => 'Dias'}
{:nome => 'Anderson', 'nome' => 'Dias'}

# 2 -> Acessando elementos de um hash

dados = {'nome' => 'Anderson', 'sobrenome' => 'Dias'}
puts dados
puts dados['nome']
puts dados['idade']
dados['idade'] = 24 # Sem brincadeiras, por favor...
puts dados['idade']

# 3 -> Métodos importantes

dados = {'nome' => 'Anderson', 'sobrenome' => 'Dias'}
puts dados.keys
puts dados.value
puts dados.lenght

puts a.key? 'nome'
puts a.has_key? :nome
puts a.value? 'Dias'
puts a.has_value? 'dias'

# 4 -> Merge de hashes

dados = {'nome' => 'Anderson', 'sobrenome' => 'Dias'}
puts dados
dados.merge({'Nome' => 'Rafael'})
puts dados
dados.merge({'sobrenome' => 'D.'})
puts dados
