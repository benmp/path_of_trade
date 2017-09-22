use Mix.Config

# Configure your database
config :path_of_trade, PathOfTrade.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "path_of_trade_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
