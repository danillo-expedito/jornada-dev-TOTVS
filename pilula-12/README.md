# Pílula #12 — Arrays (Vetores e Manipulação)

## O que foi feito

Implementação de manipulação de vetores (Arrays) em Harbour, cobrindo a inicialização de coleções indexadas, iteração com controle por índice tradicional e algoritmos simples de varredura (busca pelo menor valor):

| Arquivo | Estrutura | Propósito |
|----------|-----------|---------------------|
| `array.prg` | `FOR ... TO ... NEXT` | Exibição de notas e busca iterativa pela menor nota dentro de um array numérico |

Os nomes das variáveis seguem a **notação húngara** (prefixos: `a` = array/vetor, `n` = numérico), respeitando o padrão técnico do ecossistema xBase e ADVPL/Protheus.

## Conceitos aplicados

- `LEN()` — função nativa para retornar o tamanho (quantidade de elementos) de um array
- `FOR nI := 1 TO LEN(aNotas)` — loop com atribuição e incremento de índice clássico
- `aNotas[nI]` — acesso posicional aos elementos da coleção
- Algoritmo de busca linear para determinação de mínimo absoluto

## Particularidades da Sintaxe

Diferente de linguagens baseadas em C (como JavaScript, Java ou Python), **os arrays em Harbour utilizam indexação com base 1**. Isso significa que o primeiro elemento do vetor fica na posição `aNotas[1]`, e o último na posição correspondente ao valor retornado por `LEN(aNotas)`. Se você tentar acessar a posição `0`, o compilador/interpretador gerará um erro em tempo de execução.

No algoritmo de busca implementado, a otimização na segunda estrutura `FOR` inicia o índice em `2` (`FOR nI := 2 TO ...`), pois a primeira posição (`aNotas[1]`) já foi assumida como o valor de partida para o teste lógico na variável `nMenorNota`.

## Como executar

```bash
hbmk2 -run array.prg
```

## Referências

- [Documentação oficial do Harbour](https://harbour.github.io/doc/)
- [Curso de Harbour 2ª ed. — SAGI ERP (PDF)](https://sagierp.com.br/devel/aulas/Harbour2ed.pdf)