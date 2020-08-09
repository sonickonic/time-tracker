defmodule Comerier.Tracker.Project.Repository do
  alias Comerier.Repo
  alias Comerier.Tracker.Project

  def list do
    Repo.all(Project.Relation)
  end

  def create(attrs \\ %{}) do
    %Project.Relation{}
    |> Project.Relation.changeset(attrs)
    |> Repo.insert()
  end
end
