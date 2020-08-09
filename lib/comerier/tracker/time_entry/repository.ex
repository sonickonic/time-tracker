defmodule Comerier.Tracker.TimeEntry.Repository do
  alias Comerier.Repo
  alias Comerier.Tracker.TimeEntry

  import Ecto.Query, only: [preload: 2]

  def list do
    TimeEntry.Relation
    |> preload([:project])
    |> Repo.all()
  end

  def create(attrs \\ %{}) do
    %TimeEntry.Relation{}
    |> TimeEntry.Relation.changeset(attrs)
    |> Repo.insert()
  end
end
