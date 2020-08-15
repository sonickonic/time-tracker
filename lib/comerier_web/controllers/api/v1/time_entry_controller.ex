defmodule ComerierWeb.Api.V1.TimeEntryController do
  use ComerierWeb, :controller

  alias Comerier.Tracker

  action_fallback ComerierWeb.Api.FallbackController

  def create(conn, params) do
    with {:ok, time_entry} <- Tracker.create_time_entry(params) do
      conn
      |> put_status(:created)
      |> render("created.json", time_entry: time_entry)
    end
  end
end
