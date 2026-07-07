FUNCTION Main()
    LOCAL aNotas := {10, 7, 6, 9, 7}
    LOCAL nMenorNota := aNotas[1]
    LOCAL nI

    ? "Notas:"
    FOR nI := 1 TO LEN(aNotas)
        ? "Nota", nI, ":", aNotas[nI]
    NEXT
    
    FOR nI := 2 TO LEN(aNotas)
        IF aNotas[nI] < nMenorNota
            nMenorNota := aNotas[nI]
        ENDIF
    NEXT
    ? "Menor nota:", nMenorNota

RETURN NIL