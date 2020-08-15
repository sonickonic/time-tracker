defmodule Comerier.Tracker.ClientFactory do
  alias Comerier.Tracker.Client

  defmacro __using__(_opts) do
    quote do
      def client_factory do
        %Client.Relation{
          name: "some test client"
        }
      end
    end
  end
end
