## NetShow.me Test
Aplicação desenvolvida por Pedro Crisanto para fins de teste de conhecimento.
## Configuração
Clone o projeto
$ git clone https://github.com/pedrohcrisanto/netshowmetest.git

Instale as dependências
$ cd netshowmetest
$ docker-compose run --rm app bundle update


Crie o banco e migre as tabelas
$ docker-compose run --rm app bundle exec rails db:create db:migrate

Rode a aplicação
$ docker-compose up
Abra o seu navegador e navegue para 'localhost:3000'

Testar aplicação
$ docker-compose run --rm app bundle exec rspec

<h2>Outras informações</h2>
Aplicação no Heroku => 