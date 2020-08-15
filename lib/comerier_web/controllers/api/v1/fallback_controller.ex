defmodule ComerierWeb.Api.FallbackController do
  use ComerierWeb, :controller

  alias ComerierWeb.Api.ErrorView

  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    |> put_view(ErrorView)
    |> render("422.json", changeset: changeset)
  end
end
