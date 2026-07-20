FUNCTION Main()
    LOCAL cNome := ""
    LOCAL cDisc := ""
    LOCAL nNota1
    LOCAL nNota2
    LOCAL nMedia
    LOCAL cInputNota

    hb_cdpSelect("PT850")

    ? "================================================="
    ? "         === Cadastro de Notas ===               "
    ? "================================================="

    DO WHILE .T.
        ACCEPT " Digite o nome do aluno: " TO cNome

        IF Len(Trim(cNome)) > 0
            EXIT
        ENDIF

        ? " Nome inv lido (nÆo pode ser vazio)"
        ? "================================================="
    ENDDO

    // Loop de consistÃªncia: Disciplina (3 letras maiÃºsculas)
    DO WHILE .T.
        ACCEPT " Digite a disciplina (ex: MAT, POR): " TO cDisc

        IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            EXIT
        ENDIF

        ? " Disciplina inv lida (exatamente 3 letras mai£sculas)"
        ? "================================================="
    ENDDO

    DO WHILE .T.
        ACCEPT " Digite a primeira nota (0 a 10): " TO cInputNota
        nNota1 := Val(cInputNota)

        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ENDIF

        ? " Nota inv lida (digite um valor entre 0 e 10)"
        ? "================================================="
    ENDDO

    DO WHILE .T.
        ACCEPT " Digite a segunda nota (0 a 10): " TO cInputNota
        nNota2 := Val(cInputNota)

        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ENDIF

        ? " Nota inv lida (digite um valor entre 0 e 10)"
        ? "================================================="
    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    ? "================================================="
    ? " Aluno:     ", Trim(cNome)
    ? " Disciplina:", cDisc
    ? " Nota 1:    ", nNota1
    ? " Nota 2:    ", nNota2
    ? " M‚dia:     ", AllTrim(Str(nMedia), 10, 2)
    ? "================================================="

RETURN NIL
