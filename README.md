# A comunhão cristã frente aos dilemas da ética digital

Monografia a ser entregue no [STPS - Seminário Teológico Presbiteriano Simonton](https://seminariosimonton.com.br/)

## Edição local

Sugestão: Use a extensão LaTeX para o Codium

## Geração de PDF

### Usando Docker

```
docker build . -t latex
docker run -it --rm -v $PWD:/latex latex sh -c "make"
```

### Usando docker compose

```
docker compose up
```

### Sem uso de Docker

Instale as dependências que estão descritas no Makefile ou no Dockerfile e depois execute o comando [make](Makefile) na raiz do projeto.

## Licença

[A comunhão cristã frente aos dilemas da ética digital](https://github.com/vitormattos/monografia-teologia)  
por [Vitor Mattos de Souza](https://github.com/vitormattos) está licenciado sob a  
[Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1).

[![Atribuição](https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1)](https://creativecommons.org/licenses/by-sa/4.0/) 
[![Não Comercial](https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1)](https://creativecommons.org/licenses/by-sa/4.0/) 
[![Compartilha Igual](https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1)](https://creativecommons.org/licenses/by-sa/4.0/)
