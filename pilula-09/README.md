# Pílula #03 — Booleanos e Operadores Lógicos

## O que foi feito

Declaração de variáveis do tipo booleano em Harbour usando `LOCAL` e aplicação dos operadores lógicos (`.AND.`, `.OR.`, `.NOT.`), cobrindo as operações fundamentais da álgebra booleana:

| Variável | Tipo | Exemplo |
|----------|-----------|---------------------|
| `lVerdadeiro` | Booleano | `.T.` |
| `lFalso` | Booleano | `.F.` |

Os nomes seguem a **notação húngara** (prefixo `l` indica o tipo lógico/booleano), mantendo o padrão do ecossistema xBase e ADVPL/Protheus.

## Conceitos aplicados

- `LOCAL` — escopo de variável restrito à função
- `.T.` e `.F.` — literais lógicos para Verdadeiro (*True*) e Falso (*False*) (delimitados por pontos)
- `.AND.` — operador lógico E (retorna verdadeiro apenas se ambos forem verdadeiros)
- `.OR.` — operador lógico OU (retorna verdadeiro se pelo menos um for verdadeiro)
- `.NOT.` — operador lógico de negação (inverte o valor booleano)
- `?` — impressão no console com quebra de linha

## Particularidades da Sintaxe

Em Harbour, os valores literais booleanos e os operadores lógicos precisam obrigatoriamente ser delimitados por pontos (ex: `.T.`, `.AND.`). Essa característica herda diretamente da especificação clássica do Clipper e difere de linguagens modernas que utilizam palavras-chave limpas ou símbolos (como `&&`, `||`, `!`). 

No ambiente Protheus/ADVPL, a mesma sintaxe estrita é exigida para a construção de regras de negócio, filtros e condicionais.

## Como executar

```bash
hbmk2 -run booleanos.prg
```

## Referências

- [Documentação oficial do Harbour](https://harbour.github.io/doc/)
- [Curso de Harbour 2ª ed. — SAGI ERP (PDF)](https://sagierp.com.br/devel/aulas/Harbour2ed.pdf)