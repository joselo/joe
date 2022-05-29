defmodule JoeWeb.PageController do
  use JoeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
