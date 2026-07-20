FUNCTION Main()
    hb_cdpSelect("PT850")

    ? "========================"
    ? "    === Contagem ===    "
    ? "========================"

    ? " Contagem de 1 a 100: "
    Contagem(1, 100, 1)
    ? "========================"

    ? " Contagem de -50 a 50: "
    Contagem(-50, 50, 1)
    ? "========================"

    ? " Contagem de 80 a 5: "
    Contagem(80, 5, -1)
    ? "========================"

RETURN NIL

FUNCTION Contagem(inicio, fim, passo)
    LOCAL nInicio := inicio
    LOCAL nFim := fim
    LOCAL nStep := passo
    LOCAL i

    FOR i := nInicio TO nFim STEP nStep
        QOut(i)
    NEXT
RETURN NIL