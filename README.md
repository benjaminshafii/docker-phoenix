# Phoenix Development With Docker Compose

Featuring:

Docker
Docker Compose
Elixir 1.3.4

## First Time
Create a new app

`docker-compose run web bash /initiate.sh`

Change
`./app/config/dev.exs`
```
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "my_db",
  hostname: "postgres",
  pool_size: 10
```
**Note: You'll also need to modify
`./app/config/test.exs`
if you want to be able to run tests

Run
`docker-compose run web mix ecto.create`

## To Launch the containers
`docker-compose up`
