defmodule Comerier.Factory do
  use ExMachina.Ecto, repo: Comerier.Repo

  use Comerier.Tracker.ClientFactory
  use Comerier.Tracker.ProjectFactory
  use Comerier.Tracker.TaskFactory
  use Comerier.Tracker.TimeEntryFactory
end
