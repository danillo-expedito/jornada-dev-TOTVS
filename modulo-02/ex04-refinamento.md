## Refinamento sucessivo

Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o subtota, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a pagar.

### Nível 1 - visão geral

```
INÍCIO
    Registrar itens da compra & Calcular subtotal
    Aplicar desconto se cliente tiver cartão fidelidade (5%)
    Mostrar total a pagar
FIM
```


### Nível 2 - detalhando cada parte:

```
INÍCIO
    // DECLARAÇÃO DE VARIÁVEIS
    DECLARE subtotal, precoItem, totalAPagar, valorDesconto: REAL
    DECLARE possuiFidelidade: LOGICO  // Guarda VERDADEIRO ou FALSO
    DECLARE continuar: LOGICO  // Guarda VERDADEIRO ou FALSO
    DECLARE resposta, respostaFidelidade: CARACTERE  // Auxiliar para ler a entrada do teclado

    subtotal ← 0
    continuar ← VERDADEIRO

    // 1. REGISTRAR ITENS E CALCULAR SUBTOTAL
    ENQUANTO continuar FACA
        ESCREVA "Digite o preço do item: "
        LEIA precoItem

        subtotal ← subtotal + precoItem

        ESCREVA "Deseja registrar mais um item? (S/N): "
        LEIA resposta
  
        SE resposta == "S" OU resposta == "s" ENTAO
             continuar ← VERDADEIRO
        SENAO
             continuar ← FALSO
        FIM_SE
    FIM_ENQUANTO

    // 2. VERIFICAR CARTÃO FIDELIDADE
    ESCREVA "O cliente possui cartão fidelidade? (S/N): "
    LEIA respostaFidelidade
  
    SE respostaFidelidade == "S" OU respostaFidelidade == "s" ENTAO
        possuiFidelidade <- VERDADEIRO
    SENAO
        possuiFidelidade <- FALSO
    FIM_SE
  
    SE possuiFidelidade ENTAO
        valorDesconto <- subtotal * 0.05 
        totalAPagar <- subtotal - valorDesconto
        ESCREVA "Desconto de 5% aplicado!"
    SENAO
        valorDesconto <- 0
        totalAPagar <- subtotal
    FIM_SE
  
    // 3. MOSTRAR TOTAL A PAGAR
    ESCREVA "--- RESUMO DA COMPRA ---"
    ESCREVA "Subtotal: R$ ", subtotal
    ESCREVA "Desconto: R$ ", valorDesconto
    ESCREVA "Total a Pagar: R$ ", totalAPagar
FIM
  
  
```
