def da_boas_vindas
  puts "Bem vindo ao jogo da adivinhaçao"
  puts "Qual é o sue nome?"
  nome = gets.strip
  puts "\n"
  puts "Começaremos o jogo para voce, #{nome}"
  nome
end

def pede_dificuldade
  puts "Qual o nivel de dificuldade que se deseja? (1 facil, 5 difícil)"
  dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
  case dificuldade
  when 1
    maximo = 30
  when 2
    maximo = 60
  when 3
    maximo = 100
  when 4
    maximo = 150
  else
    maximo = 200
  end
  puts "Escolhendo um numero secreto entre 1 e #{maximo}..."
  sorteando = rand(maximo) + 1
  puts "Escolhido... que tal advinhar hoje nosso numero secreto?"
  sorteando
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
  puts "\n"
  puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
  puts "Chutes até agora: #{chutes}"
  puts "Entre com o numero"
  chute = gets.strip
  puts "Será que acertou? Voce chutou #{chute}"
  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute.to_i

  if acertou
    puts "Acertou!"
    return true
  end

  maior = numero_secreto > chute.to_i
  if maior
    puts "O numero secreto é maior"
  else
    puts "O numero secreto é menor"
  end
  false
end

nome = da_boas_vindas
dificuldade = pede_dificuldade
numero_secreto = sorteia_numero_secreto dificuldade

pontos_ate_agora = 1000 
limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas

  chute = pede_um_numero chutes, tentativa, limite_de_tentativas
  chutes << chutes

  if nome == "Kaique"
    puts "Acertou!"
    break
  end

  pontos_a_perder = (chute - numero_secreto).abs / 2.0
  pontos_ate_agora -= pontos_a_perder

  if verifica_se_acertou numero_secreto ,chute
    break
  end
end

puts "Voce ganhou #{pontos_ate_agora} pontos."
  