FROM elixir:1.2
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get -y install nodejs inotify-tools
ADD ./app /app
WORKDIR /app
RUN mix local.hex --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN mix deps.get --froce gettext \
      phoenix_live_reload \
      cowboy \
      phoenix_html \
      phoenix_pubsub \
      phoenix \
      postgrex \
      phoenix_ecto \
RUN mix ecto.create
RUN npm install
EXPOSE 4000
