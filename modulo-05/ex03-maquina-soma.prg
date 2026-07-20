FUNCTION Main()
    LOCAL nNum
    LOCAL nTotal := 0
    LOCAL nQtd := 0
    LOCAL cInputNum

    hb_cdpSelect("PT850")

    ? "================================================="
    ? "            === M quina de Soma ===              "
    ? "================================================="
    ? " Digite valores para somar."
    ? " Para encerrar e ver o resultado, digite '0'"

    DO WHILE .T.
        ACCEPT " Digite um valor: " TO cInputNum
        nNum := Val(cInputNum)

        IF nNum == 0
            EXIT
        ENDIF

        nTotal := nTotal + nNum
        nQtd := nQtd + 1
    ENDDO

    ? "================================================="
    ? " Soma total dos valores:       ", nTotal
    ? " Quantidade de valores somados:", nQtd
    ? "================================================="

RETURN NIL
