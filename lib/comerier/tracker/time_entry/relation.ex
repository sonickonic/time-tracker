defmodule Comerier.Tracker.TimeEntry.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "time_entries" do
    field :notes, :string
    field :seconds, :integer
    field :started_at, :utc_datetime
    field :stopped_at, :utc_datetime

    timestamps()
  end

  def serializable_fields do
    [
      :id,
      :notes,
      :seconds,
      :started_at,
      :stopped_at,
      :inserted_at,
      :updated_at
    ]
  end

  @doc false
  def changeset(time_entry, attrs) do
    time_entry
    |> cast(attrs, [:started_at, :stopped_at, :seconds, :notes])
    |> validate_required([:started_at])
  end
end
