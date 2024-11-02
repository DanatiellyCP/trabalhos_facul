programa{
// Procedimento/Atividade nº 1
/**
 Você é um explorador corajoso que se aventura em uma misteriosa Floresta Sussurrante em busca de 
tesouros lendários e segredos perdidos. Ao adentrar na floresta, você se depara com três caminhos 
diferentes, cada um levando a uma parte desconhecida e perigosa da floresta. Sua missão é escolher 
sabiamente o caminho a seguir, enfrentando desafios e tomando decisões que impactarão sua jornada e 
sua pontuação final.
Prepare-se para esta aventura cheia de mistérios!
 */
   
   	 // iniciando com 10 pontos para o jogador
      inteiro pontos = 10 //minimo 10 pontos maximo 110

       funcao inicio(){
       	cadeia TextoPrincipal
       	inteiro continuar = 1
    		cadeia Menu1 = ""
    		TextoPrincipal = " Você é um explorador corajoso que se aventura em uma misteriosa Floresta Sussurrante em busca de \n" 
    		TextoPrincipal =  TextoPrincipal + " tesouros lendários e segredos perdidos. Ao adentrar na floresta você se depara com três caminhos \n" 
    		TextoPrincipal =  TextoPrincipal + " diferentes cada um levando a uma parte desconhecida e perigosa da floresta. \n" 
    
    		escreva (TextoPrincipal, "\n \n")  
    
    		escreva ("Deseja iniciar o Jogo?  \n [Sim]: Para iniciar. \n [Não]: Para Sair do jogo. \n")
    		leia (Menu1)

		//incia o jogo
    		se (Menu1 == "Sim"){ 
       		faca{
       			escreva("Deseja continuar? \n Se Sim Digite [1]. \n Se Não Digite [2] \n Sua Pontuação Atual: [" + pontos + "]\n")
       			leia(continuar)

       			se (continuar == 1){
       				continuar = jogar()
       			} 
            senao{
       				escreva ("Jogo Finalizado pelo jogador. \n\n")

              escreva("\n *********************************************** \n")
              escreva(" Fim de Jogo! \n")
              //exibir a pontuação do jogador
              escreva(" Essa é a sua pontuação final: [" + pontos + "]\n\n")
              escreva("\n *********************************************** \n")
       			}	
       		} enquanto (continuar != 2)
          escreva(" Fim de Jogo! \n")
          //exibir a pontuação do jogador
          escreva(" Essa é a sua pontuação final: [" + pontos + "]\n\n")
    		}
    		
       //Sai do jogo
       se (Menu1 == "Não"){
      		escreva ("Jogo Finalizado pelo jogador. \n\n")
      	}
       }
      
     
  
 	funcao cadeia Caminhos(inteiro c){
 		//função para exibir os caminhos possiveis
		cadeia cam = ""
		cadeia descricao = ""
 		
 		se (c == 1){
			cam = "******* Caminho 1: O Caminho das Sombras ******* \n"
			descricao = " Este caminho é cercado por árvores antigas e sombrias, com raios de lua penetrando entre os \n" 
			descricao = descricao + "galhos. Parece ser o caminho mais misterioso e perigoso da floresta. \n"
 		}
 		se (c==2){
 			cam = "******* Caminho 2: O Caminho da Luz ******* \n"
 			descricao = " Este caminho é iluminado por raios de sol que filtram entre as copas das árvores. \n" 
			descricao = descricao + "Parece ser o caminho mais seguro e reconfortante da floresta. \n" 
 			}
 		se (c == 3){
 			cam = 				"******* Caminho 3: O Caminho das Criaturas ******* \n"
			descricao = 			" Este caminho é repleto de sons estranhos e pegadas misteriosas no chão. \n"
			descricao = descricao +	" Parece ser o caminho mais imprevisível e enigmático da floresta. \n "
 			
 			}
 		retorne  cam + descricao
 			
 	}

 	funcao inteiro Obst(inteiro op){
 		// função de obstáculos para exibir o obstaculo de acordo com a opção de caminho escolhido
 		cadeia desafio = ""
 		inteiro ret = 0
 		
	 	escolha(op){
	 	caso 1: desafio =  "\n    Você encontra uma criatura mágica guardiã do caminho, que exige um enigma para deixá-lo \n"
			desafio = desafio +  "passar. O enigma é: 'Quem sou eu? Tenho olhos, mas não vejo. Tenho boca, mas não falo. O que sou? \n"
			desafio = desafio +  " [1]: Caveira \n"
			desafio = desafio +  " [2]: Zombie \n"
			escreva(desafio + " \n")
			leia(ret)
		pare
		
		caso 2: desafio = 			" \n Você encontra uma ponte quebrada sobre um rio turbulento. E deve decidir se:\n" 
			   desafio = desafio + 	" [1]:Tentará atravessar a ponte quebrada? \n" 
			   desafio = desafio + 	" [2]: Procurará um desvio seguro. \n" 
    			   escreva(desafio + " \n")
    			   leia(ret)
    		pare

    		caso 3: desafio = 			" \n Você se depara com uma criatura mágica adormecida bloqueando o caminho. \n"
    			   desafio = desafio + 	" E terá que decidir se: \n "
    			   desafio = desafio +   " [1] Tentará contornar a criatura com cuidado. \n" 
    			   desafio = desafio +   " [2] Acordar a criatura para passar. \n"
    			   escreva(desafio  + " \n")
    			   leia(ret)
    		pare
    		caso contrario: 
    			desafio = "Você não escolheu nehum desáfio - Jogo encerrado"
	 	}

			escreva(desafio)
	    		retorne ret
 		
 		}
 
  
  funcao inteiro jogar() {
	inteiro caminho = 0
  	
      escreva (" *** Muito bem! Vamos iniciar nossa aventura... *** \n")
      escreva (" Escolha um caminho: \n")
      escreva (" Caminho [1]: O Caminho das Sombras \n")
      escreva (" Caminho [2]: O Caminho da Luz \n")
      escreva (" Caminho [3]: O Caminho das Criaturas  \n")
      
      inteiro escolha_caminho
	 leia(escolha_caminho)
	 
      escreva("\n" + Caminhos(escolha_caminho))
      inteiro resp =  Obst(escolha_caminho)

      se (escolha_caminho == 1){
      	se (resp == 1){
      		escreva(" \n Muito bem! Você respondeu certo. \n" + 
      			   " A criatura mágica lhe entrega um baú, contendo uma gema preciosa que vale 100 pontos ** \n\n")
      		pontos = pontos + 100
      		}senao{
      			escreva(" \n Óhh Não! resposta errada. Você perdeu 5 pontos \n\n")
      			pontos = pontos - 5
      			}
      	}

      se (escolha_caminho == 2){
      	se (resp == 1){
      		escreva(" Muito Bem! Você atravessou a ponte quebrada com sucesso, " 
      		+ "e encontrou uma fonte mágica, que restaura sua saúde e, adiciona 50 pontos à sua pontuação.\n \n")
      		pontos = pontos + 50
      		}senao{
      			escreva("\n Infelizmente contornando a ponte, você se  depara com um abismo, e terá que voltar. " 
      			+ " você perdeu 5 pontos \n \n")
      			pontos = pontos -5
      			}
      	}
      se (escolha_caminho == 3){
      	se (resp == 1){
      		escreva("Você encontrou uma árvore encantada, que te concede uma habilidade especial " +
      		       "de camuflagem, adicionando 75 pontos, à sua pontuação. \n \n")
      		pontos = pontos + 75
      	}senao{
      		escreva("Óhhh não, você não deveria ter acordado a criatura mágica,\n ela te feriu e você perdeu 10 pontos \n\n")
      			
      		}
      	}
        se (pontos == 110){
          retorne 2
        } senao{
          retorne 1
        }
         
    }
   

  }

