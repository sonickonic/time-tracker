defmodule Comerier.Repo.Migrations.CreateClients do
  use Ecto.Migration

  def change do
    create table(:clients) do
      add :name, :string, null: false
      add :billing_email, :string

      timestamps()
    end
  end
end
