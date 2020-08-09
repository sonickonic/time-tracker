defmodule Comerier.Tracker.Project.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  alias Comerier.Tracker.Client

  schema "projects" do
    field :name, :string
    field :description, :string
    field :billable, :boolean
    field :notes, :string

    belongs_to :client, Client.Relation

    timestamps()
  end

  def serializable_fields do
    [
      :id,
      :name,
      :description,
      :billable,
      :notes,
      :client,
      :inserted_at,
      :updated_at
    ]
  end

  def changeset(project, attrs) do
    project
    |> cast(attrs, [:name, :client_id, :description, :billable, :notes])
    |> validate_required([:name, :client_id])
  end
end
