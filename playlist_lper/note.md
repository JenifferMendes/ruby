# Anotações sobre as aulas


para entrar no modo interativo do ruby, usamos: 
irb
* não pode somar numeros com string:
  10 + "palhaços" =  exception;
* para separar palavras, o pessoal do ruby costuma utilizar "_" por exemplo: uma_palavra (convenção)

.chomp() -> limpa carateres gerados pelo comando, tira o \n etc, gera uma nova string.

interpolação em ruby: "#{codigo}"

array em ruby
para adicionar um dado no array em ruby:
```Ruby
array = []
array << "dado"
array = ["dado"]
array.delete("dado")
array = []
# mesma ideia também do javascript de procurar por indice array[0] etc
```
<!-- ideia do hash é parecida com dicionario ou objeto do javascript -->
hash = { chave: valor} 
caso queira pesquisar sobre o valor no hash use: 
```array[:chave]```

return é opcional em ruby, pois o metodo sempre retorna a ultima coisa que está no código do método.

