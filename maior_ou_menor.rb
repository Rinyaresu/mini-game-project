def da_boas_vindas
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n"
    puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
    puts "\n"
    puts "Escolhendo um numero secreto entre 0 e 200..."
    sorteado = 175
    puts "Escolhido... que tal adivinhar hoje nosso numero secreto?"
    sorteado
end  

def pede_um_numero tentativas, limite_de_tentativas
    puts "Tentativa " + tentativas.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o numero"
    chute = gets
    puts "\n"
    puts "Será que acertou? Voce chutou " + chute
    puts "\n"
    chute.to_i
end

def verifica_se_acertou numero_secreto, chute
    acertou = numero_secreto == chute
    if acertou
        puts "Acertou!"
        return true
    end
        maior = numero_secreto > chute
    if maior 
        puts "O numero secreto é maior!"
    else
        puts "O numero secreto é menor!"
    end
    false
end


da_boas_vindas
numero_secreto = sorteia_numero_secreto   

limite_de_tentativas = 5
for tentativas in 1..limite_de_tentativas
    chute = pede_um_numero tentativas, limite_de_tentativas
    if verifica_se_acertou numero_secreto, chute
        break
    end    
end

