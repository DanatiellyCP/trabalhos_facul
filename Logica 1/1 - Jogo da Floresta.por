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
 	funcao cadeia Caminhos(inteiro c){
 		//função para exibir os caminhos possiveis
		cadeia cam = ""
		cadeia descricao = ""
 		
 		se (c == 1){
			cam = "******* Caminho 1: O Caminho das Sombras ******* \n"
			descricao = "Este caminho é cercado por árvores antigas e sombrias, com raios de lua penetrando entre os \n" 
			descricao = descricao + "galhos. Parece ser o caminho mais misterioso e perigoso da floresta. \n"
 		}
 		se (c==2){
 			cam = "******* Caminho 2: O Caminho da Luz *******"
 			descricao = "Este caminho é iluminado por raios de sol que filtram entre as copas das árvores. Parece ser o \n" 
			descricao = descricao + "caminho mais seguro e reconfortante da floresta. \n" 
 			}
 		se (c == 3){
 			cam = "******* Caminho 3: O Caminho das Criaturas *******"
			descricao = " Este caminho é repleto de sons estranhos e pegadas misteriosas no chão. Parece ser o caminho mais imprevisível e enigmático da floresta. \n "
 			descricao = descricao + "Você se depara com uma criatura mágica adormecida bloqueando o caminho."
 			
 			}
 		retorne  cam + descricao
 			
 	}

 	funcao inteiro Obst(inteiro op){
 		// função obstaculos para exibir o obstaculo de acordo com a opção de caminho escolhido
 		cadeia desafio = ""
 		inteiro ret = 0
 		
	 	escolha(op){
	 	caso 1: desafio =  "Você encontra uma criatura mágica guardiã do caminho, que exige um enigma para deixá-lo \n"
			desafio = desafio + "passar. O enigma é: 'Quem sou eu? Tenho olhos, mas não vejo. Tenho boca, mas não falo. O que sou? \n"
			desafio = desafio + "[1]: Caveira \n [2]: Zombie \n"
			ret = 1
		pare
		
		caso 2: desafio = " Você encontra uma ponte quebrada sobre um rio turbulento. E deve decidir se:\n" 
			   desafio = desafio + "[1]:Tentará atravessar a ponte quebrada? \n[2]: Procurará um desvio seguro.\n" 
    			  ret = 2
    		pare

    		caso 3: desafio = "Decida se: [1] Tentará contornar a criatura com cuidado \n [2] Acordar a criatura para passar."
    			ret = 3
    		pare
    		caso contrario: 
    			desafio = "Você não escolheu nehum desáfio - Jogo encerrado"
	 	}

			escreva(desafio)
	    		retorne ret
 		
 		}
 
  cadeia TextoPrincipal
  funcao inicio() {
    cadeia Menu1 = ""
    inteiro caminho = 0
    TextoPrincipal = "Você é um explorador corajoso que se aventura em uma misteriosa Floresta Sussurrante em busca de \n" 
    TextoPrincipal =  TextoPrincipal + " tesouros lendários e segredos perdidos. Ao adentrar na floresta você se depara com três caminhos \n" 
    TextoPrincipal =  TextoPrincipal + "diferentes cada um levando a uma parte desconhecida e perigosa da floresta. \n" 
	
    
    
    escreva (TextoPrincipal, "\n \n")  
    
    escreva ("Deseja iniciar o Jogo?  \n")
    leia (Menu1)

    se (Menu1 == "sim"){ 
      escreva ("Muito bem vamos iniciar nossa aventura... \n")
      escreva (" Escolha um caminho: \n")
      escreva (" Caminho 1: O Caminho das Sombras \n")
      escreva (" Caminho 2: O Caminho da Luz \n")
      escreva (" Caminho 3: O Caminho das Criaturas  \n")
      inteiro escolha_caminho
	 leia(escolha_caminho)
	 
      escreva("\n" + Caminhos(escolha_caminho))
      inteiro resp =  Obst(escolha_caminho)

	 // inicianto com 10 pontos para o jogador
      inteiro pontos = 10

      se (escolha_caminho == 1){
      	se (resp == 1){
      		escreva(" Muito bem! Você respondeu certo \n A criatura mágica lhe entrega um baú contendo  uma gema preciosa que vale 100 pontos **")
      		pontos = pontos + 100
      		}senao{
      			escreva("óhh Não! resposta errada, você perdeu 5 pontos")
      			pontos = pontos - 5
      			}
      	}

      se (escolha_caminho == 2){
      	se (resp == 1){
      		escreva("Muito Bem! Você atravessar a ponte quebrada com sucesso, ele encontra uma fonte mágica  que restaura sua saúde e adiciona 50 pontos à sua pontuação.\n \n")
      		pontos = pontos + 50
      		}senao{
      			escreva("Infelizmente contornando a ponte, você se  depara com um abismo, e terá que voltar. \n \n")
      			pontos = pontos -5
      			}
      	}
      se (escolha_caminho == 1){
      	se (resp == 1){
      		escreva("Você encontrou uma árvore encantada que concede a ele uma habilidade especial de camuflagem, adicionando 75 pontos à sua pontuação. \n \n")
      		pontos = pontos + 75
      		}senao{
      			escreva("Óhhh não, você não deveria ter acordado a criatura mágica, ela te feriu e você perdeu 10 pontos")
      			
      			}
      	}

     //exibir a pontuação
     escreva("Fim de Jogo essa é a sua pontuaçã \n")
     escreva(pontos)
       
   

    }
    se (Menu1 == "Não")
    {
      escreva ("Você saiu do jogo ); ")
    }

  
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */