defmodule Comerier.Tracker do
  @moduledoc """
  The Tracker context.
  """

  alias Comerier.Tracker.TimeEntry

  defdelegate list_time_entries(), to: TimeEntry.Repository, as: :list
end
