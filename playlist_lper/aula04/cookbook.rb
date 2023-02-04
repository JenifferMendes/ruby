puts "Bem-vindo ao CookBook, sua rede social de receitas"

receitas = []

while(1 == 1) do # pode usar espaço no lugar do ()
    puts "Digite o nome da receita:"
    name = gets.chomp()

    receitas << nome

    puts
    puts "Receita #{name} cadastrada com sucesso!"
    puts
    puts "=========== Receitas Cadastradas ==========="
    puts receitas
    puts
    # essa alinha acima faz parecido com as debaixos
    
    # for receita in receitas do
    #     puts receita 
    # end

    # receitas.each do |receitas|
    #     puts receita
    # end
end