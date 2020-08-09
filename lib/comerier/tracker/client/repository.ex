defmodule Comerier.Tracker.Client.Repository do
  alias Comerier.Repo
  alias Comerier.Tracker.Client

  def list do
    Repo.all(Client.Relation)
  end

  def create(attrs \\ %{}) do
    %Client.Relation{}
    |> Client.Relation.changeset(attrs)
    |> Repo.insert()
  end
end
