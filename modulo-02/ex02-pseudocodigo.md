## a. Calcular a **área de um retângulo** (base x altura).

```
INICIO
    DECLARE base, altura, areaTotal: REAL
    LEIA base
    LEIA altura
    areaTotal ← base * altura
    ESCREVA areaTotal
FIM

  
  
```


## b. Verificar se um número é par ou ímpar

```
INICIO
    DECLARE numero: INTEIRO
    LEIA numero
    SE numero % 2 == 0 ENTAO
        ESCREVA "o número é par"
    SENAO
        ESCREVA "o número é ímpar"
    FIM_SE
FIM
  
```


## c. Encontrar o maior entre três números

```
INICIO
    DECLARE numero1, numero2, numero3, maior: REAL
    LEIA numero1
    LEIA numero2
    LEIA numero3

    maior ← numero1

    SE numero2 > maior ENTAO
        maior ← numero2
    FIM_SE

    SE numero3 > maior ENTAO
        maior ← numero3
    FIM_SE

    ESCREVA "O maior número é: ", maior
FIM

  
```
