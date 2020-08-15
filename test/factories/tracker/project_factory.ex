defmodule Comerier.Tracker.ProjectFactory do
  alias Comerier.Tracker.Project

  defmacro __using__(_opts) do
    quote do
      def project_factory do
        %Project.Relation{
          name: "Some test project",
          client: build(:client)
        }
      end
    end
  end
end
