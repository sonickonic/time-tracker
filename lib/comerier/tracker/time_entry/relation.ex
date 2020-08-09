defmodule Comerier.Tracker.TimeEntry.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  alias Comerier.Tracker.Task

  schema "time_entries" do
    field :notes, :string
    field :seconds, :integer
    field :started_at, :utc_datetime
    field :stopped_at, :utc_datetime

    belongs_to :task, Task.Relation

    timestamps()
  end

  def serializable_fields do
    [
      :id,
      :notes,
      :seconds,
      :started_at,
      :stopped_at,
      :task,
      :inserted_at,
      :updated_at
    ]
  end

  @doc false
  def changeset(time_entry, attrs) do
    time_entry
    |> cast(attrs, [:started_at, :stopped_at, :task_id, :seconds, :notes])
    |> validate_required([:started_at, :task_id])
  end
end
