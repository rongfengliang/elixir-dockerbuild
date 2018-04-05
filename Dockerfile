FROM elixir:1.6-alpine AS build-env
WORKDIR /app
COPY * /app/
RUN cd /app \
    && mix local.hex --force \
    && mix local.rebar --force \
    && mix deps.get \
    && mix deps.compile \
    && cp mydemoproject /tmp/

FROM erlang:20-alpine
WORKDIR /app
COPY --from=build-env /tmp/mydemoproject /app/mydemoproject
CMD ["./mydemoproject"]