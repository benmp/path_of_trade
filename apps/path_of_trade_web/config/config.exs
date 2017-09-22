# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :path_of_trade_web,
  namespace: PathOfTradeWeb,
  ecto_repos: [PathOfTrade.Repo]

# Configures the endpoint
config :path_of_trade_web, PathOfTradeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SvyKgevY5HpoxzuowRJhAJT6rJDXPEWN2lncSfuPEP8v3biSF7UxYwIGER02Oxcu",
  render_errors: [view: PathOfTradeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PathOfTradeWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :path_of_trade_web, :generators,
  context_app: :path_of_trade

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
