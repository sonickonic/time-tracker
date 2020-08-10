defmodule Comerier.Repo.Migrations.AddTaskIdToTimeEntries do
  use Ecto.Migration

  def change do
    alter table(:time_entries) do
      remove :project_id
      add :task_id, references(:tasks), null: false
    end
  end
end
