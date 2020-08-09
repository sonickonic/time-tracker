defmodule Comerier.Tracker.Client.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "clients" do
    field :name, :string
    field :billing_email, :string

    timestamps()
  end

  def serializable_fields do
    [
      :id,
      :name,
      :billing_email,
      :inserted_at,
      :updated_at
    ]
  end

  def changeset(client, attrs) do
    client
    |> cast(attrs, [:name, :billing_email])
    |> validate_required([:name])
  end
end
