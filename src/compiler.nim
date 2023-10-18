import std/macros

macro printLegal(i: string): void =
    echo i, " é legal"
    echo "essa mensagem foi criada durante a compilação, e é rapida porque foi 'escrita' em assembly antes de compilar o codigo de verdade"

    
printLegal("PHP")
echo("Aqui ja foi executado o compilador")
