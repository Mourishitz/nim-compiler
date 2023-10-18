FROM nimlang/nim

WORKDIR /app

COPY . .

CMD [ "nim", "c", "-r", "./src/compiler.nim" ]