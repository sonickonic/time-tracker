defmodule ComerierWeb.TimeEntryView do
  use ComerierWeb, :view

  def time_entries_json do
    {:ok, json} =
      Comerier.Tracker.list_time_entries()
      |> Jason.encode()

    json
  end
end
