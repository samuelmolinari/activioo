use Mix.Config

config :activio, Activio.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "activio_dev",
  username: "postgres",
  password: "",
  hostname: "localhost",
  port: "5432",
  extensions: [{Geo.PostGIS.Extension, []}]
