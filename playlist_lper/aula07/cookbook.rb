def bem_vindo()
    puts "Bem-vindo ao CookBook, sua rede social de receitas"
end

def menu()
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas cadastradas"
    puts "[3] Sair"

    print "Escolha uma opção: "
    return gets.to_i() 
end

def inserir_receita()
    puts "Digite o nome da receita: "
    name = gets.chomp()
    
    puts "Digite o tipo da receita: "
    type = gets.chomp()
    
    puts
    puts "Receita #{name} cadastrada com sucesso!"
    puts
    return { name: name, type: type}
end

def imprimir_receitas(receitas)
    puts "=========== Receitas Cadastradas ==========="
    receitas.each do |receita|
        puts "#{receita[:name]} - #{receita[:type]} "
    end
    puts
end

bem_vindo()

receitas = []

option = menu()

while(option != 3) do
    if (option == 1 )
        receitas << inserir_receita()
    elsif(option == 2)
        imprimir_receitas(receitas)
    else
        puts "Opção inválida!"
    end

    option = menu() 
end

puts "Obrigado por usar o CookBook, até logo"