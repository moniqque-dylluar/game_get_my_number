    # Jogo "Adivinhe meu número"
    
    puts "Welcome to 'Get My Number!'"
    
    #Recebe o nome do jogador e o cumprimenta
    print "What's your name? "
    
    input = gets 
    name = input.chomp
    #nome = gets.chomp funciona muito bem tbm
    
    puts "Welcome, #{name}!"
    
    #Armazena um número aleatório para o jogador advinhar
    puts "I've got a randon number between 1 and 100."
    puts "Can you guess it?"
    
    target = rand(100) +1 # target é o nome da nova variável. (100)+1 Pq rand vai gerar números entre 0 e 99, e precisamos entre 0 e 100
    
    #Monitora quantas tentativas o jogador fez
    num_guesses = 0
  
    #Monitora se o jogador adivinhou corretamente.
    guessed_it = false
    
    until num_guesses == 10 || guessed_it 
        
            puts "You've got #{10 - num_guesses} gesses left." #Faz exatamente a mesma coisa que as linhas de código anteriores
            print "Make a guess: "
            guess = gets.to_i
            
            num_guesses += 1
        
        # Compara a tentativa ao alvo e imprime a mensagem apropriada.
        
        if guess < target
            puts "Oops. Your guess are LOW."
            elsif guess > target
                puts "Oops.. Your guess are HIGH"
            elsif guess == target
                puts "Good job, #{name}!"
                puts "You guess my number in #{num_guesses} guesses!"
                guessed_it = true
        end
    end
    
    #Se o jogador ficar sem mais tentativas, dizer-lhe qua era o número
    
    unless guessed_it
        puts "Sorry. You dint't get my number. (It was #{target}.)"
    end

