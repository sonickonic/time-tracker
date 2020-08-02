defmodule ComerierWeb.PageController do
  use ComerierWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
