defmodule Comerier.Tracker.TimeEntryFactory do
  alias Comerier.Tracker.TimeEntry

  defmacro __using__(_opts) do
    quote do
      def time_entry_factory do
        %TimeEntry.Relation{
          started_at: DateTime.utc_now(),
          task: build(:task)
        }
      end
    end
  end
end
