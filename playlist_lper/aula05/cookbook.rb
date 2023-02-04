puts "Bem-vindo ao CookBook, sua rede social de receitas"

receitas = []

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas cadastradas"
puts "[3] Sair"

print "Escolha uma opção: " # não pula linha
opcao = gets.to_i() # inverte para inteiros

while(opcao != 3) do
    if (opcao == 1 )
        puts "Digite o nome da receita:"
        name = gets.chomp()
        receitas << name
        puts
        puts "Receita #{name} cadastrada com sucesso!"
        puts
    elsif(opcao == 2)
        puts "=========== Receitas Cadastradas ==========="
        puts receitas
        puts
    else
        puts "Opção inválida!"
    end

    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas cadastradas"
    puts "[3] Sair"

    print "Escolha uma opção: " # não pula linha
    opcao = gets.to_i()
end

puts "Obrigado por usar o CookBook, até logo"