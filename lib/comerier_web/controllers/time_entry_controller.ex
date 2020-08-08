defmodule ComerierWeb.TimeEntryController do
  use ComerierWeb, :controller

  alias Comerier.Tracker

  def index(conn, _params) do
    time_entries = Tracker.list_time_entries()
    render(conn, "index.html", time_entries: time_entries)
  end
end
