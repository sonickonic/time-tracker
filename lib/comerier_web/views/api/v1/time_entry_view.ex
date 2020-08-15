defmodule ComerierWeb.Api.V1.TimeEntryView do
  use ComerierWeb, :view

  def render("created.json", %{time_entry: time_entry}) do
    render_one(time_entry, __MODULE__, "time_entry.json")
  end

  def render("time_entry.json", %{time_entry: time_entry}) do
    %{
      id: time_entry.id,
      started_at: time_entry.started_at,
      stopped_at: time_entry.stopped_at,
      task_id: time_entry.task_id
    }
  end
end
