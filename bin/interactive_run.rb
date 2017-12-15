require_relative '../lib/executioner'

puts "escreva o nome do autor do projeto do git como aparece na url"
author = gets.chomp
puts "agora escreva o nome do projeto como aparece na url"
project = gets.chomp
cur_col = ""
cols = []
until(cur_col = "999")
  puts "digite o nome da coluna que quer ou 999 para continuar"
  cur_col = gets.chomp
  cols << cur_col
end
puts "digite o nome da coluna com url para extrair mais infomações"
puts "ou deixe em branco para valor de coluna padrâo"
url_aux = gerts.chomp
url = url_aux == "" ? 'url':url_aux
Executioner.new(author, project, cols, url).execute
