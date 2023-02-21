# Guia básico de Git

configuração de usuário:

### quando utiliza global: todos os repositorios
```bash
git config --global user.name "Seu nome"
git config --global user.email "seu e-mail"
```
### quando utiliza local: repositório específico

```bash
git config --local user.name "Seu nome"
git config --local user.email "seu e-mail"
```

### para verificar o nome/email:
```bash
git config user.name
git config user.email
```

### a estrutura de um comando:

comando ``git``;  
nome do comando git que queremos executar, por exemplo: ``git config``;  
opções, por exemplo:`` git config --global``, explicado acima;  
argumentos, por exemplo: ``git config user.email``, para mostrar o e-mail definido  

use o comando para ver as configurações definidas na sua máquina:

```bash
git config --list
```
ou
```bash
git config --global --list 
```

## Obtendo Ajuda
### comando para mostrar lista geral com todos os comandos e o que eles fazem:
```bash
git help 
```
### comando para mostrar uma descrição detalhada das opções para o comando específico (neste caso config):
```bash
git help config 
```

o comando ``git init``, que vai dizer ao Git que queremos que ele comece a monitorar os arquivos no local onde foi inicializado.

Você pode conferir o nome atual do diretório rodando o comando:
```bash
git branch --show-current
main
```