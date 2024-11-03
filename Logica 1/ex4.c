#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <string.h>

// Estrutura com os dados do aluno
struct dados_aluno {
    char nome[20];
    float media1, media2, mediaGeral;
    char classificacao[20];
};

// Função para cadastrar e exibir os dados do aluno
void cadAluno(struct dados_aluno aluno, FILE *arq) {
    printf("Aluno: %s\n", aluno.nome);
    printf("Media Geral: %.2f\n", aluno.mediaGeral);
    printf("classificacao: %s\n\n", aluno.classificacao);

    // Salvando no arquivo
    fprintf(arq, "Aluno: %s\n", aluno.nome);
    fprintf(arq, "Media Geral: %.2f\n", aluno.mediaGeral);
    fprintf(arq, "classificacao: %s\n\n", aluno.classificacao);
}

// Função para calcular a Media geral
float calculaMediaGeral(float m1, float m2) {
    return (m1 + m2) / 2;
}

int main() {
    setlocale(LC_ALL, "Portuguese");
    
    int cadastrar;
    struct dados_aluno a;
    FILE *arq;
    
    // Inicializar o arquivo para escrita
    arq = fopen("cad_alunos.txt", "w");
    if (arq == NULL) {
        printf("Erro ao abrir o arquivo!\n");
        return 1;
    }
    
    printf("** Bem vindo(a) ao sistema de cadastro de Media escolar **\n\n");

    do {
        printf("Deseja inserir aluno?\n");
        printf("Digite [1] para Sim.\n");
        printf("Digite [2] para Nao.\n");
        scanf("%d", &cadastrar);
        getchar();  // Limpa o buffer do teclado

        if (cadastrar == 1) {
            printf("\nInsira os dados do aluno:\n");

            printf("Informe o nome do aluno: ");
            fgets(a.nome, sizeof(a.nome), stdin);
            a.nome[strcspn(a.nome, "\n")] = '\0';  // Remove o '\n' da string

            printf("Informe a primeira Media: ");
            scanf("%f", &a.media1);

            printf("Informe a segunda Media: ");
            scanf("%f", &a.media2);

            // Calcula a Media geral
            a.mediaGeral = calculaMediaGeral(a.media1, a.media2);

            // classificacao do aluno
            if (a.mediaGeral >= 6) {
                strcpy(a.classificacao, "Aprovado");
            } else if (a.mediaGeral >= 5) {
                strcpy(a.classificacao, "Recuperação");
            } else {
                strcpy(a.classificacao, "Reprovado");
            }

            // Cadastra e exibe os dados do aluno
            cadAluno(a, arq);
        }

    } while (cadastrar != 2);

    printf("Sistema Finalizado.\n");

    fclose(arq); // Fecha o arquivo
    return 0;
}
