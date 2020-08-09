defmodule Comerier.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :name, :string, null: false
      add :description, :string
      add :billable, :boolean, default: false
      add :notes, :string

      timestamps()
    end
  end
end
