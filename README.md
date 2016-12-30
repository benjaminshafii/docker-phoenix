# Django Development With Docker Compose

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
  password: "mysecretpassword",
  database: "postgres",
  hostname: "db",
  pool_size: 10
```

## To Launch the containers
`docker-compose up`
