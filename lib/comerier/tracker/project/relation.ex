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

  def serializable_fields do
    [
      :id,
      :name,
      :description,
      :billable,
      :notes,
      :inserted_at,
      :updated_at
    ]
  end

  def changeset(project, attrs) do
    project
    |> cast(attrs, [:name, :description, :billable, :notes])
    |> validate_required([:name])
  end
end
