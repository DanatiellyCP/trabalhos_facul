#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <stdbool.h>

// estrutura com os dados do cliente
struct dados_clientes {
  char nome[20];
  float valorDesejado, renda;
  char status; // Bom pagador = B | Mau pagador = M | Pagador razoavel = R
  int temEmprego; // tem = 1, nao tem = 0
};

int analise(struct dados_clientes cliente) {
  // funçao para analisar a pontuaçao do cliente
  int pontos = 2000; // Inicializa a pontuaçao com 1000

  // Analisando se tem emprego
  if (cliente.temEmprego == 1) {
    pontos += 200;
  } else {
    pontos -= 200;
  }

  // Analisando a renda
  if (cliente.renda < 2000) {
    pontos -= 200;
  } else if (cliente.renda >= 2001 && cliente.renda <= 5000) {
    pontos += 100;
  } else {
    pontos += 200;
  }

  // Analisando o status de histórico do cliente
  if (cliente.status == 'B') {
    pontos += 200;
  } else if (cliente.status == 'R') {
    pontos += 100;
  } else if (cliente.status == 'M') {
    pontos -= 200;
  }

  return pontos;
}

int main() {
  int menu;
  int resposta;

  printf("***** Sistema de Aprovacao de Credito *****\n");

  printf("Deseja iniciar uma avaliacao? \n");
  printf("Digite [1] para iniciar o sistema\n");
  printf("Digite [2] para encerrar o sistema\n");

  scanf("%d", &menu);
  getchar(); // Consumir o '\n' deixado pelo scanf

  if (menu == 1) {
    // Inicia o processo de analise
    printf("Informe os seus dados para analise \n\n");

    // Iniciar a struct de cliente
    struct dados_clientes c1;
    printf("Informe o nome do cliente:\n");
    scanf("%s", c1.nome);

    printf("Informe o valor desejado para emprestimo:\n");
    scanf("%f", &c1.valorDesejado);

    printf("Informe a renda do cliente:\n");
    scanf("%f", &c1.renda);

    printf("Informe o status do historico do cliente:\n");
    printf("Bom pagador = [B] | Mau Pagador = [M] | Pagador Regular = [R]\n");
    getchar(); // Consumir o '\n' deixado pelo scanf anterior
    scanf("%c", &c1.status);

    printf("Informe se o cliente tem emprego [1] para sim, [0] para nao:\n");
    scanf("%d", &c1.temEmprego);

    printf("Analisando os dados do cliente...\n\n");

    resposta = analise(c1);

    printf("Pontuacao atingida: %d \n", resposta);
    if (resposta >= 2500) {
      printf("Emprestimo no valor de %.2f aprovado.\n", c1.valorDesejado);

    } else if (resposta <= 2499 && resposta > 2001) {
      printf("Emprestimo no valor de %.2f em analise. Consulte novamente mais tarde.\n", c1.valorDesejado);
    } else {
      printf("Emprestimo no valor de %.2f negado.\n", c1.valorDesejado);
    }

  } else {
    printf("\nSistema encerrado...\n");
  }

  return 0;
}
