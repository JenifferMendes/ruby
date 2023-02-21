INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4


def bem_vindo()
    puts "Bem-vindo ao CookBook, sua rede social de receitas"
end

def menu()
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas cadastradas"
    puts "[#{BUSCAR_RECEITAS}] Buscar receitas" #fazer
    puts "[#{SAIR}] Sair"

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
    if receitas.empty?
        puts "Nenhuma receita cadastrada"
    end
    puts
end

def buscar_receitas(receitas)
    puts "Digite o nome da receita que você deseja: "
    receita_desejada = gets.chomp()
    puts "sua receita de #{receita_desejada}"
    receitas.each do |receita|
        if (receita[:name] == "#{receita_desejada}")
            return puts "#{receita[:name]} - #{receita[:type]}"
        end
    end
    puts "Nenhuma receita com esse nome"
end

bem_vindo()

receitas = []

option = menu()

loop do
    if (option == INSERIR_RECEITA )
        receitas << inserir_receita()
    elsif(option == VISUALIZAR_RECEITAS)
        imprimir_receitas(receitas)
    elsif(option == BUSCAR_RECEITAS)
       puts buscar_receitas(receitas)
    elsif(option == SAIR)
        break
    else
        puts "Opção inválida!"
    end

    option = menu() 
end

puts
puts "Obrigado por usar o CookBook, até logo"