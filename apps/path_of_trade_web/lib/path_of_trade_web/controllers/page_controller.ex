defmodule PathOfTradeWeb.PageController do
  use PathOfTradeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
