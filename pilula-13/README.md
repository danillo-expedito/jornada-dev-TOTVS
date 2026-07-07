# Pílula #13 — Criação e Uso de Funções (Modularização)

## O que foi feito

Implementação de funções customizadas em Harbour para isolar e reutilizar lógica de programação (modularização). O código separa a responsabilidade do fluxo principal (`Main`), do cálculo matemático da média aritmética e da validação lógica de regras de aprovação escolar:

| Arquivo | Função Customizada | Entrada (Parâmetro) | Saída (Retorno) |
|----------|-------------------|----------------------|------------------|
| `funcoes.prg` | `CalcularMedia()` | Array de notas (`aNotas`) | Valor numérico (`nMedia`) |
| `funcoes.prg` | `VerificarAprovacao()` | Valor numérico (`media`) | String de texto (`cResultado`) |

Os nomes das variáveis e funções seguem a **notação húngara** (prefixos: `a` = array, `n` = numérico, `c` = caractere), mantendo a padronização recomendada para o desenvolvimento de rotinas em ADVPL/Protheus.

## Conceitos aplicados

- `FUNCTION ... RETURN` — declaração de blocos de sub-rotinas com escopo encapsulado
- Escopo de Parâmetros — passagem de valores locais para dentro de funções
- Reutilização de Código — execução da mesma lógica para conjuntos de dados diferentes (Aluno 1 e Aluno 2)
- `LEN()` e `FOR EACH` — funções utilitárias e laços operando em escopo isolado

## Particularidades da Sintaxe

Em Harbour e ADVPL, qualquer função criada por você pode ser invocada globalmente dentro do mesmo arquivo ou projeto, desde que respeite a assinatura (quantidade e tipo de parâmetros necessários). Toda função precisa de uma instrução `RETURN` explícita se o objetivo for devolver um resultado processado para quem a chamou.

Uma característica essencial observada na estrutura é o **encapsulamento**. A variável `nSoma`, por exemplo, existe apenas dentro do escopo de `CalcularMedia()`. O programa principal (`Main`) não tem acesso direto a ela e nem precisa saber como o cálculo é feito; ele apenas envia o array e aguarda o retorno numérico. Esse conceito de modularização é a base para a criação de User Functions (`U_`) customizadas no ecossistema Protheus.

## Como executar

```bash
hbmk2 -run funcoes.prg
```

## Referências

- [Documentação oficial do Harbour](https://harbour.github.io/doc/)
- [Curso de Harbour 2ª ed. — SAGI ERP (PDF)](https://sagierp.com.br/devel/aulas/Harbour2ed.pdf)