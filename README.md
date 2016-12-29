# How to launch

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
