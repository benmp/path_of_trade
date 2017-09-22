defmodule PathOfTrade.Application do
  @moduledoc """
  The PathOfTrade Application Service.

  The path_of_trade system business domain lives in this application.

  Exposes API to clients such as the `PathOfTradeWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(PathOfTrade.Repo, []),
    ], strategy: :one_for_one, name: PathOfTrade.Supervisor)
  end
end
