defmodule Comerier.Tracker.Task.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  alias Comerier.Tracker.Project

  schema "tasks" do
    field :name, :string

    belongs_to :project, Project.Relation

    timestamps()
  end

  def serializable_fields do
    [
      :id,
      :name,
      :project,
      :inserted_at,
      :updated_at
    ]
  end

  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :project_id])
    |> validate_required([:name, :project_id])
  end
end
