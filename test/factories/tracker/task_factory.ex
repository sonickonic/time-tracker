defmodule Comerier.Tracker.TaskFactory do
  alias Comerier.Tracker.Task

  defmacro __using__(_opts) do
    quote do
      def task_factory do
        %Task.Relation{
          name: "Some test task",
          project: build(:project)
        }
      end
    end
  end
end
