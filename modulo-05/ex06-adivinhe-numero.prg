FUNCTION Main()
    LOCAL nSecreto := HB_RandomInt(1, 100)
    LOCAL nPalpite
    LOCAL cInputPalpite
    LOCAL nI
    LOCAL lAcertou := .F.

    hb_cdpSelect("PT850")

    ? "================================================="
    ? "          === Jogo do N£mero Secreto ===         "
    ? "================================================="
    ? " Sorteei um n£mero entre 1 e 100."
    ? " Vocˆ tem 7 tentativas para adivinhar!"

    FOR nI := 1 TO 7
        ? "================================================="
        ? " Tentativa", nI, "de 7"
        ACCEPT " Digite seu palpite: " TO cInputPalpite
        nPalpite := Val(cInputPalpite)

        IF nPalpite == nSecreto
            lAcertou := .T.
            EXIT
        ELSEIF nPalpite < nSecreto
            ? " Errou! O n£mero secreto ‚ MAIOR que", nPalpite
        ELSE
            ? " Errou! O n£mero secreto ‚ MENOR que", nPalpite
        ENDIF
    NEXT

    ? "================================================="
    IF lAcertou
        ? " Parab‚ns! Vocˆ acertou em", AllTrim(Str(nI)), "tentativa(s)!"
    ELSE
        ? " Que pena, suas tentativas acabaram..."
    ENDIF
    ? " O n£mero secreto era:", nSecreto
    ? "================================================="

RETURN NIL