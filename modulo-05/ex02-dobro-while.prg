FUNCTION Main()
    LOCAL nNum
    LOCAL nDobro
    LOCAL cInputNum

    hb_cdpSelect("PT850")

    ? "================================================="
    ? "             === O Dobro ou Nada ===             "
    ? "================================================="
    ? " Ao digitar um n£mero, o dobro ser  exibido."
    ? " Caso queira encerrar o programa,"
    ? " basta digitar '0'"

    DO WHILE .T.
        ACCEPT " Digite um n£mero inteiro: " TO cInputNum
        nNum := Val(cInputNum)

        IF nNum == 0
            ? "================================================="
            ? " Encerrando programa, aguarde..."
            EXIT
        ELSEIF nNum < 0 .OR. nNum != Int(nNum)
            ? "================================================="
            ? " Valor negativo ou nÆo-inteiro digitado"
            ? " Programa encerrado..."
            EXIT
        ELSE
            nDobro := nNum * 2
            ? " O dobro ‚: ", nDobro
        ENDIF
    ENDDO

RETURN NIL