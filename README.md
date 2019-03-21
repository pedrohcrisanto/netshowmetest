## NetShow.me Test
Aplicação desenvolvida por Pedro Crisanto para fins de teste de conhecimento.
## Configuração
Clone o projeto
```sh
$ git clone https://github.com/pedrohcrisanto/netshowmetest.git
´´´
Instale as dependências
```sh
$ cd netshowmetest
$ docker-compose run --rm app bundle update
´´´
Crie o banco e migre as tabelas
```sh
$ docker-compose run --rm app bundle exec rails db:create db:migrate
´´´
Rode a aplicação
```sh
$ docker-compose up
´´´
Abra o seu navegador e navegue para 'localhost:3000'
## Testar aplicação
```sh
$ docker-compose run --rm app bundle exec rspec
´´´
## Outras informações
Aplicação no Heroku => 