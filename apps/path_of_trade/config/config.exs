use Mix.Config

config :path_of_trade, ecto_repos: [PathOfTrade.Repo]

import_config "#{Mix.env}.exs"
