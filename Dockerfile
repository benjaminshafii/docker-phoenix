FROM elixir:1.3.4

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get -y install inotify-tools \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app
ADD . /app

RUN mix local.hex --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez


EXPOSE 4000
