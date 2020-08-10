defmodule Comerier.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string, null: false

      add :project_id, references(:projects), null: false

      timestamps()
    end
  end
end
