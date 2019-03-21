## NetShowme - Test
por Pedro Crisanto
## Configuração

Clone o projeto

```sh
$ git clone https://github.com/pedrohcrisanto/netshowmetest.git
```

Instale as dependências
```sh
$ cd /netshowmetest/
$ docker-compose run --rm app bundle install
```

Crie o banco e as tabelas
```sh
$ docker-compose run --rm app bundle exec rails db:create db:migrate
```

Rode a aplicação
```sh
$ docker-compose up
```

Abra o seu navegador(de preferência Chrome ou Firefox) e navegue para `localhost:3000`

Para realizar Testes
```sh
$ docker-compose run --rm app bundle exec rspec
```
## Aplicação no Heroku
https://testnetshowme.herokuapp.com/
