defmodule Comerier.Tracker.TimeEntry.Repository do
  alias Comerier.Repo
  alias Comerier.Tracker.TimeEntry

  def list do
    Repo.all(TimeEntry.Relation)
  end

  def create(attrs \\ %{}) do
    %TimeEntry.Relation{}
    |> TimeEntry.Relation.changeset(attrs)
    |> Repo.insert()
  end
end
