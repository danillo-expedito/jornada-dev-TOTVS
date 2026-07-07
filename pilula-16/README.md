# Pílula #16 — Mini-CRUD de Contatos em Harbour

## O que foi feito

Um cadastro de contatos completo em terminal — **C**reate, **R**ead, **U**pdate*
e **D**elete — construído do zero em Harbour, operando sobre uma tabela DBF.
O objetivo do exercício é entender, na prática, o que funções como
`AxCadastro()` do Protheus automatizam: este programa tem ~120 linhas; no
ADVPL, o mesmo resultado sai em 3.

\* *A alteração (Update) ficou como exercício futuro — a base de localizar o
registro e regravar campos já está pronta nas demais operações.*

## Estrutura do programa

| Função        | Responsabilidade                                      |
|---------------|-------------------------------------------------------|
| `Main()`      | Configura ambiente (datas), abre tabela, chama o menu |
| `AbreTabela()`| Cria o DBF na primeira execução e abre para uso       |
| `Menu()`      | Loop principal com despacho por `DO CASE`             |
| `Incluir()`   | Formulário `@ SAY/GET` + `READ`, gravação no DBF      |
| `Listar()`    | Grade interativa com `Browse()`                       |
| `Excluir()`   | Listagem indexada por `RecNo()`, exclusão em 2 tempos |
| `Pausa()`     | Utilitário "pressione qualquer tecla"                 |

## Conceitos aplicados

**Banco de dados xBase (DBF)**
- `dbCreate()` — criação da tabela a partir de um array de estrutura
  (nome, tipo, tamanho, decimais) — o "dicionário de dados" artesanal
- `USE` / `dbCloseArea()` — abertura (modo exclusivo) e fechamento
- `APPEND BLANK` + `REPLACE campo WITH valor` — inclusão de registros
- Ponteiro de registro: `GO TOP`, `GO n`, `SKIP`, `EOF()`, `RecNo()`, `LastRec()`
- Notação `alias->campo` para acesso qualificado aos campos
- **Exclusão em dois tempos**: `DELETE` marca, `PACK` remove fisicamente —
  mesma filosofia dos registros `D_E_L_E_T_E_D` do Protheus

**Interface de terminal**
- `@ lin, col SAY ... GET ...` + `READ` — formulário posicional; os GETs
  herdam tipo e tamanho das variáveis (`Space(30)`, `CToD("")`)
- `LOCAL GetList := {}` — array de apoio exigido pelo sistema GET/READ
  (herança do Clipper, montado pelo pré-processador)
- `Browse()` — grade de dados navegável em uma linha de código
- `Inkey(0)` / `Chr()` — leitura de tecla única, sem depender de Enter
- `CLS`, `?` — controle básico de tela

**Fundamentos**
- `DO WHILE ... ENDDO`, `DO CASE ... ENDCASE`, `IF ... ENDIF`
- Operadores lógicos `.T.` / `.F.` / `.AND.` / `!`
- Conversões explícitas de tipo: `Chr()` (código→caractere),
  `Val()` (string→número), `CToD()` (string→data)
- `SET DATE BRITISH` + `SET CENTURY ON` antes de qualquer entrada de datas

## Problemas encontrados e soluções

1. **Terminal não confirmava entrada com Enter** (`ACCEPT` acumulava
   caracteres) — incompatibilidade entre o driver de terminal do Harbour
   (GT) e o emulador. Solução: trocar a leitura para `Inkey(0)` (tecla
   única) e executar via shell bash no terminal integrado do VS Code.
2. **Confusão código × caractere da tecla** — `Inkey(0)` retorna o código
   ASCII (tecla `1` → 49). Comparações e conversões exigem o passo
   `Chr()` antes: `Val(Chr(nTecla))`, nunca `Val(nTecla)`.
3. **`Workarea not in use` no `APPEND`** — uma instância anterior do
   programa segurava o DBF em modo exclusivo. Diagnóstico com `Alias()`;
   lição: verificar se a tabela abriu antes de usá-la (falhar cedo).
4. **`Ambiguous reference 'GETLIST'`** — o sistema GET/READ pressupõe a
   variável `GetList`; declarar `LOCAL GetList := {}` na função.

## Como executar

```bash
hbmk2 -run agenda.prg
```

O arquivo `contatos.dbf` é criado automaticamente na primeira execução.

## Referências

- [Documentação oficial do Harbour](https://harbour.github.io/doc/)
- [Curso de Harbour 2ª ed. — SAGI ERP (PDF)](https://sagierp.com.br/devel/aulas/Harbour2ed.pdf)
- Dúvidas pontuais (drivers de terminal, sistema GET/READ, modos de
  abertura do DBF) sanadas com o auxílio do Claude (Anthropic), em
  formato de estudo guiado — os códigos foram escritos manualmente.