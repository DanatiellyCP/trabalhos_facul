programa{
   funcao cadeia exibePosicao(inteiro pa) {
   	//função para exibir o que acontece quando o jogador acessa determinada posição na matriz do labirinto
        cadeia pos = ""
        escolha(pa) {
            caso 0: pos = "Livre"
            pare
            
            caso 1: pos = "Parede"
            pare
            
            caso 2: pos = "Volta 2"
            pare
            
            caso 3: pos = "Volte ao Início"
            pare
            
            caso 4: pos = "Avance"
            pare

            caso 5: pos = "Tesouro"
            pare
        }
        
        retorne pos
    }

    funcao inteiro geraCaminho(inteiro num, inteiro pos) {
        // Função para gerar caminho aleatório no labirinto
        inteiro aleatorio[5][5] = {
            {4, 0, 0, 0, 0}, 
            {3, 0, 0, 0, 1}, 
            {2, 0, 5, 1, 2},
            {1, 1, 2, 3, 4},
            {1, 1, 2, 3, 4}
        }

        retorne aleatorio[pos][num]
    }

    funcao GerarLabirinto(inteiro num_aleatorio) {
    // função que gera o labirinto
    	
        inteiro i, j
        inteiro posicaoV, posicaoH, posAtual
        logico EhTesouro = falso // variavel de controle
        inteiro labirinto[5][5]

        // Preparar o labirinto
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                se ((labirinto[i][j] == num_aleatorio) e (EhTesouro == falso)) {
                    labirinto[i][j] = 5
                    EhTesouro = verdadeiro //para garantir que haverá apenas uma situação de vitoria
                } senao {
                    labirinto[i][j] = geraCaminho(j, i)
                }
            }
        }
        
        // Exibir labirinto inicial
        para (i = 0; i < 5; i++) {
            escreva("\n")
            para (j = 0; j < 5; j++) {
                escreva("[" + labirinto[i][j] + "]")
            }
        }
        
        // Loop para o jogador tentar encontrar o tesouro
        faca {
            escreva("\n Escolha uma posição Vertical (0-4)\n")
            leia(posicaoV)

            escreva("\n Escolha uma posição Horizontal (0-4)\n")
            leia(posicaoH)

            escreva("Posição escolhida: [" + posicaoV + "]" + "[" + posicaoH + "] \n")
            
            posAtual = labirinto[posicaoV][posicaoH]

            // Verificação das condições específicas
            se (posAtual == 4) {
                escreva("Avançando automaticamente...\n")
                posicaoV = (posicaoV + 1) % 5  // Move uma posição para baixo (ou volta ao início se chegar ao fim)
                posAtual = labirinto[posicaoV][posicaoH]
            } senao se (posAtual == 3) {
                escreva("Voltando ao início...\n")
                posicaoV = 0
                posicaoH = 0
                posAtual = labirinto[posicaoV][posicaoH]
            }
            
            escreva(exibePosicao(posAtual) + "\n")
            
        } enquanto (posAtual != 5)  // Continua até encontrar o tesouro (posição 5)

        escreva("\nParabéns! Você encontrou o tesouro!\n")
    }

    funcao inicio(){
    	inteiro cont, jogar, numero
    	
	escreva(" **** Bem Vido ao labirinto mágico **** \n Tente encontrar o Tesouro e se salve do Labirinto \n\n")
	escreva(" # Regras do Jogo: \n")
	escreva(" 1 - Sempre escolha o número de acordo com o que for sugerido \n")
	escreva(" 2 - Cada número representa um passo dentro do labirinto \n")
	escreva(" VAMOS JOGAR? Digite [1] para Sim ou [2] para Não \n")
	leia(jogar)

	se (jogar == 1){
		escreva("Iniciando o jogo... \n")
		escreva("Digite um número entre 1 e 5 para tentativas \n")
		leia(numero)

		cont = 0
		 enquanto(cont <= numero ) {
			//iniciar as tentativas
			GerarLabirinto(cont)
			cont ++
			
			}
			
		se (cont == numero){
			escreva("\n Tentativas esgotadas.\nFim de Jogo!!! \n ")
			
			}

		
		
		}senao{
			escreva("\n \n Fim de Jogo\n")	
			
			}
	
    	
    		 
    }


}

   
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3757; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */