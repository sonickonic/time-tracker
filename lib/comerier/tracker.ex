defmodule Comerier.Tracker do
  @moduledoc """
  The Tracker context.
  """

  alias Comerier.Tracker.TimeEntry
  alias Comerier.Tracker.Project

  defdelegate list_time_entries(), to: TimeEntry.Repository, as: :list
  defdelegate create_time_entry(attrs), to: TimeEntry.Repository, as: :create

  defdelegate list_projects(), to: Project.Repository, as: :list
  defdelegate create_project(attrs), to: Project.Repository, as: :create
end
