defmodule Comerier.Repo.Migrations.AddProjectIdToTimeEntries do
  use Ecto.Migration

  def change do
    alter table(:time_entries) do
      add :project_id, references(:projects), null: false
    end
  end
end
