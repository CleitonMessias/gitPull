# GitPull

Codigo criado em shell sript com o proposito de incorporar mudanças de um repositório remoto no branch atual.
Para Ambientes linux

## Arquivos

    git_pull.sh

## Configurações Iniciais

Faça download do arquivo no computador local

Configure acesso ao servidor via ssh key

Configure acesso ssh key para o servidor rodar o comando git pull sem solicitar senha

substitur pelo nome do usuário que acessa o servidor
> root

    USERNAME=root

Substituir para o caminho do projeto no servido
> /var/www/html/project_web

*linha 5: SCRIPT="cd /var/www/html/project_web && git pull"*

Abra o terminal na pasta que está o arquivo git_pull.sh e rode o comando abaixo para setar a permissão de execução
```properties
$ chmod a+x nome_do_arquivo.ext
``` 
## Executar

Na pasta do projeto rode o comando abaixo

    $ ./git_pull.sh

## Apelido | Alias

Para facilitar a execução do script pode ser criado uma alias, que de forma resumida é um pelido para um deternimado comando, substituindo os diretórios.

    $ echo 'alias gitpull="/home/cleiton/Documents/git_pull.sh"' >> /home/cleiton/.bash_aliases
