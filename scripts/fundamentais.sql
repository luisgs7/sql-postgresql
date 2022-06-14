## Comandos Unix iniciais

# sudo -i -u postgres
psql
\password adicionar senha ao usuário atual (123)
\l - lista os banco de dados disponíveis
\h - lista todos os comandos disponíveis
\? - lista os comandos administrativos do psql
\du - lista os usuários que o banco de dados possui
\c <nome-do-banco> - conecta a um banco de dados específico
\d - lista as tabelas de um banco de dados
\dS - lista as tabelas administrativas internas do sistema Postgres
\! - sai do terminal do postgres database, para o terminal do postgres user
\! - date executa um comando no terminal sem sair do shell do postgres
\du - lista as roles do banco de dados
\conninfo - lista qual o banco de dados que estou conectado

## Configurar senha no banco de dados postgres

show hba_file; lista o local no disco de um arquivo de configuração 
sudo nano /etc/postgresql/12/main/pg_hba.conf

sudo systemctl restart postgresql

psql -U postgres -  Logar com o suário postgres a partir do usuário do sistema

## Comandos para criar e excluir usuários do postgres

man createuser - apresenta o manual do comando informado

sudo -i -u postgres - acessar o usuário postgres

createuser -dPs kiki - criando um novo usuário

## Adicionar uma configuração no arquivo do banco de dados /etc/postgresql/12/main/pg_hba.conf
para o novo usuário

psql -U kiki postgres - login de um novo usuário com um banco de dados existente
