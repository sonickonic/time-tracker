defmodule Comerier.Tracker.TimeEntry.Repository do
  alias Comerier.Repo
  alias Comerier.Tracker.TimeEntry

  import Ecto.Query, only: [preload: 2]

  def list do
    TimeEntry.Relation
    |> preload(task: [project: :client])
    |> Repo.all()
  end

  def create(attrs \\ %{}) do
    with {:ok, reply} <- do_create(attrs) do
      {:ok, Repo.preload(reply, task: [project: :client])}
    end
  end

  defp do_create(attrs) do
    %TimeEntry.Relation{}
    |> TimeEntry.Relation.changeset(attrs)
    |> Repo.insert()
  end
end
