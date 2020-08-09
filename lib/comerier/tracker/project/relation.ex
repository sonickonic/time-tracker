defmodule Comerier.Tracker.Project.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "projects" do
    field :name, :string
    field :description, :string
    field :billable, :boolean
    field :notes, :string

    timestamps()
  end

  def changeset(project, attrs) do
    project
    |> cast(attrs, [:name, :description, :billable, :notes])
    |> validate_required([:name])
  end
end
