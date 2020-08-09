defmodule Comerier.Repo.Migrations.CreateTimeEntries do
  use Ecto.Migration

  def change do
    create table(:time_entries) do
      add :started_at, :utc_datetime
      add :stopped_at, :utc_datetime
      add :seconds, :integer
      add :notes, :string

      timestamps()
    end
  end
end
