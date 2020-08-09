defmodule Comerier.Tracker.Client.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "clients" do
    field :name, :string
    field :billing_email, :string

    timestamps()
  end

  def changeset(client, attrs) do
    client
    |> cast(attrs, [:name, :billing_email])
    |> validate_required([:name])
  end
end
