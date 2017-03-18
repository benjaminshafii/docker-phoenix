# Phoenix Development With Docker Compose

Featuring:

* Docker
* Docker Compose
* Elixir 1.4
* Phoenix 1.3

## First Time
### Build the Dockerfile
`cd docker-phoenix`
`docker-compose build`

### Create an Empty App
`docker-compose run web bash /initiate.sh`

### Configure DB
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

### Reinitializing Git
If you want to start your project with a clean git history
```
rm -rf ./git
git init
```

## Running an Existing App
`docker-compose up`

## Running mix commands
Any command can be run using `run` syntax

e.g.
`docker-compose run web iex -S mix`
