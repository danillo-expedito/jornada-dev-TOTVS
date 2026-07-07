FUNCTION Main()
    SET DATE BRITISH
    SET CENTURY ON

    AbreTabela()
    Menu()
    // FUNCAO PARA FECHAR A TABELA
    dbCloseArea()
RETURN NIL

FUNCTION AbreTabela()
    IF !FILE("contatos.dbf")
        dbCreate("contatos", { ;
            { "NOME", "C", 30, 0 }, ;
            { "FONE", "C", 15, 0 }, ;
            { "NASC", "D", 8, 0 } ;
        })
    ENDIF
    USE contatos
    ? "Total de registros:" , LastRec()
RETURN NIL

FUNCTION Menu()
    LOCAL nTecla
    LOCAL cOpcao := ""
    LOCAL cFraseTeste := "Usuario escolheu a opcao: "

    
    DO WHILE cOpcao != "0"
        CLS
        ? "Escolha uma das seguintes opcoes:"
        ? "1-Incluir, 2-Listar, 3-Excluir, 0-Sair"
        nTecla := Inkey(0)
        cOpcao := Chr(nTecla)

        DO CASE
        CASE cOpcao == "1"
            Incluir()  
        CASE cOpcao == "2"
            Listar()
        CASE cOpcao == "3"
            Excluir()
        OTHERWISE
            ? "Opcao invalida"
            Pausa()
        ENDCASE 
    ENDDO

RETURN NIL


FUNCTION Incluir()
    LOCAL cNome := Space(30)
    LOCAL cFone := Space(15)
    LOCAL dNasc := CToD("")
    LOCAL GetList := {}
    
    CLS
    ? " == Novo Contato == "
    @ 2, 2 SAY "Nome:" GET cNome
    @ 3, 2 SAY "Fone:" GET cFone
    @ 4, 2 SAY "Nasc:" GET dNasc
    READ
    
    APPEND BLANK
    REPLACE NOME WITH cNome, FONE WITH cFone, NASC WITH dNasc
    
    ? "A Inclusao de dados ocorreu com sucesso!"
    Pausa()
    
RETURN NIL

FUNCTION Listar()
    CLS
    ? " == Lista de Contatos == "
    ?
    GO TOP
    // LOOP ABAIXO FUNCIONA DE MODO SIMILAR AO Browse()
    //  ----------------------------------------------
    // DO WHILE !Eof()
    //    ? contatos->NOME, contatos->FONE, contatos->NASC
    //    SKIP
    // ENDDO
    //  ----------------------------------------------
    Browse()
    Pausa()
RETURN NIL

FUNCTION Excluir()
    LOCAL nTecla
    LOCAL nPosicao := 0
    
    CLS
    ? " == Selecione um contato para excluir == "
    GO TOP
    DO WHILE !Eof()
        ?  RecNo(), contatos->NOME, contatos->FONE, contatos->NASC
        SKIP
    ENDDO
    ? "Digite o indice do contato que deseja excluir:"
    ?
    nTecla := Inkey(0)
    nPosicao := Val(Chr(nTecla))
    
    IF nPOsicao >= 1 .AND. nPosicao <= LastRec()
        GO nPosicao
        DELETE
        PACK
        ? "Contato deletado com sucesso!"
    ELSE
        ? "Registro nao encontrado."
    ENDIF
    Pausa()
    
RETURN NIL

FUNCTION Pausa()
    ? "Pressione qualquer tecla para continuar..."
    Inkey(0)
RETURN NIL