FROM quay.io/everydayhero/elixir_and_java:1.0.4_j7
ENV REFRESHED_AT 2015-04-23

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD mix.exs /usr/src/app/mix.exs
ADD mix.lock /usr/src/app/mix.lock
RUN mix deps.get

ADD . /usr/src/app
RUN mix deps.compile

CMD ["./work"]
