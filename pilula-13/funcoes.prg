FUNCTION Main()
    LOCAL aNotasAluno1 := {10, 6, 6, 5, 7.5}
    LOCAL aNotasAluno2 := {8, 8.5, 9, 7, 7}
    LOCAL nMediaAluno1
    LOCAL nMediaAluno2

    nMediaAluno1 := CalcularMedia(aNotasAluno1)
    nMediaAluno2 := CalcularMedia(aNotasAluno2)

    ? "Aluno 1" , VerificarAprovacao(nMediaAluno1) , "com media:" , nMediaAluno1

    ? "Aluno 2" , VerificarAprovacao(nMediaAluno2) , "com media:" , nMediaAluno2

RETURN NIL

FUNCTION CalcularMedia(aNotas)
    LOCAL nMedia
    LOCAL nNota
    LOCAL nSoma := 0

    FOR EACH nNota IN aNotas
        nSoma += nNota
    NEXT

    nMedia := nSoma / LEN(aNotas)

RETURN nMedia

FUNCTION VerificarAprovacao(media)
    LOCAL cResultado

    IF media >= 7
        cResultado := "Aprovado"
    ELSE
        cResultado := "Reprovado"
    ENDIF

RETURN cResultado


