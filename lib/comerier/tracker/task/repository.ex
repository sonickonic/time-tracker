defmodule Comerier.Tracker.Task.Repository do
  alias Comerier.Repo
  alias Comerier.Tracker.Task

  def list do
    Repo.all(Task.Relation)
  end

  def create(attrs \\ %{}) do
    %Task.Relation{}
    |> Task.Relation.changeset(attrs)
    |> Repo.insert()
  end
end
