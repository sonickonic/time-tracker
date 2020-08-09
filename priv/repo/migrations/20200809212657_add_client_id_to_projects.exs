defmodule Comerier.Repo.Migrations.AddClientIdToProjects do
  use Ecto.Migration

  def change do
    alter table(:projects) do
      add :client_id, references(:clients), null: false
    end
  end
end
