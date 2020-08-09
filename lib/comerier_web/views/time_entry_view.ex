defmodule ComerierWeb.TimeEntryView do
  use ComerierWeb, :view

  def time_entries_json(time_entries) do
    {:ok, json} = Jason.encode(time_entries)

    json
  end
end
