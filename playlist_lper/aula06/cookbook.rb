puts "Bem-vindo ao CookBook, sua rede social de receitas"

receitas = []

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas cadastradas"
puts "[3] Sair"

print "Escolha uma opção: " # não pula linha
option = gets.to_i() # inverte para inteiros

while(option != 3) do
    if (option == 1 )
        puts "Digite o nome da receita: "
        name = gets.chomp()
        
        puts "Digite o tipo da receita: "
        type = gets.chomp()
        receitas << { name: name, type: type}
        puts
        puts "Receita #{name} cadastrada com sucesso!"
        puts
    elsif(option == 2)
        puts "=========== Receitas Cadastradas ==========="
        receitas.each do |receita|
            puts "#{receita[:name]} - #{receita[:type]} "
        end
        puts
    else
        puts "Opção inválida!"
    end

    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas cadastradas"
    puts "[3] Sair"

    print "Escolha uma opção: " # não pula linha
    option = gets.to_i()
end

puts "Obrigado por usar o CookBook, até logo"