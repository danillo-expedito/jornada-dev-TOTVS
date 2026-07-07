FUNCTION Main()
    LOCAL lVerdadeiro := .T.
    LOCAL lFalso := .F.

    ? "Caso boolean verdadeiro: ", lVerdadeiro
    ? "Caso boolean falso: ", lFalso
    ? "Caso boolean verdadeiro AND Caso boolean falso: ", lVerdadeiro .AND. lFalso
    ? "Caso boolean verdadeiro OR Caso boolean falso: ", lVerdadeiro .OR. lFalso
    ? "NOT Caso boolean verdadeiro: ", .NOT. lVerdadeiro
    ? "NOT Caso boolean falso: ", .NOT. lFalso
RETURN NIL