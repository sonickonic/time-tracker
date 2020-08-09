defmodule Comerier.Tracker do
  @moduledoc """
  The Tracker context.
  """

  alias Comerier.Tracker.TimeEntry
  alias Comerier.Tracker.Project
  alias Comerier.Tracker.Client

  defdelegate list_time_entries(), to: TimeEntry.Repository, as: :list
  defdelegate create_time_entry(attrs), to: TimeEntry.Repository, as: :create

  defdelegate list_projects(), to: Project.Repository, as: :list
  defdelegate create_project(attrs), to: Project.Repository, as: :create

  defdelegate list_clients(), to: Client.Repository, as: :list
  defdelegate create_client(attrs), to: Client.Repository, as: :create
end
