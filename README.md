# Phoenix Development With Docker Compose

Featuring:

* Docker
* Docker Compose
* Elixir 1.4
* Phoenix 1.3

## First Time
Create a new app
Build the Dockerfile
`cd docker-phoenix`
`docker-compose build`

Create an empty app
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

### Reinitializing Git
If you want to start your project with a clean git history
```
rm -rf ./git
git init
```

## Running an Existing App
`docker-compose up`
