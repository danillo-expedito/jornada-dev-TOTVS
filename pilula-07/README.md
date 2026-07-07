💊 Pílula 07 — Meu Primeiro "Olá, Mundo!" em Harbour

Este repositório registra o primeiro grande marco prático na minha jornada na Jornada DEV START 2026.

Abaixo, documento o processo de configuração do meu ambiente de desenvolvimento, os scripts criados e o resultado alcançado.
🛠️ Configuração do Ambiente (Arch Linux)

Como usuário de Linux, realizei a instalação do Harbour a partir da fonte oficial para garantir um ambiente limpo e atualizado. Seguindo as diretrizes da documentação oficial do Harbour, os passos foram:

    Clone do Repositório: Realizei o clone do código-fonte utilizando o Git:

    git clone https://github.com/vszakats/harbour-core.git

    Compilação e Instalação: Preparei as dependências do sistema e compilei os binários do Harbour diretamente na máquina.

    Verificação: Garanti que o compilador hbmk2 ficou disponível globalmente no terminal.

💻 Códigos Desenvolvidos

Para testar o ambiente e entender as formas de exibir informações na tela, criei dois arquivos diferentes:
1. Forma Padrão (helloworld.prg)

Utilizando a função nativa QOut para imprimir o texto.
Snippet de código

FUNCTION Main()
   QOut("Olá, Mundo!")
RETURN NIL

2. Forma Simplificada com Atalho (helloworld-shortcut.prg)

Utilizando o comando ?, que funciona como um atalho sintático para a função QOut no Harbour, tornando o código mais direto.
Snippet de código

FUNCTION Main()
   ? "Olá, Mundo!"
RETURN NIL

O que a estrutura faz:

    FUNCTION Main(): Define a função principal, a porta de entrada obrigatória por onde todo programa Harbour começa a ser executado.

    QOut("...") ou ?: Exibe o texto na tela e avança para a próxima linha automaticamente.

    RETURN NIL: Encerra a função sem retornar nenhum valor (NIL representa nulo/nada).

🚀 Resultado Alcançado

Ambos os arquivos foram compilados e executados com sucesso através do terminal, gerando exatamente a mesma saída esperada:

Olá, Mundo!


🧠 Significado deste Milestone

Escrever e rodar esses scripts valeu para validar três pontos críticos para o meu aprendizado:

    Ambiente validado: Meu setup no Arch Linux está configurado corretamente e pronto para os próximos módulos.

    Ciclo completo: Consegui passar por todas as etapas de escrita, compilação e execução de um programa.

    Sintaxe explorada: Entendi que o Harbour oferece formas diferentes (como o atalho ?) para realizar a mesma instrução na tela.