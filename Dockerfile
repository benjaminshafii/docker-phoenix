FROM elixir:1.3.4

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get -y install nodejs inotify-tools
RUN mkdir /app
WORKDIR /app
ADD . /app
WORKDIR /app
RUN mix local.hex --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
ADD ./initiate.sh /initiate.sh

EXPOSE 4000
