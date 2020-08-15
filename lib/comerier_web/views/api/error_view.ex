defmodule ComerierWeb.Api.ErrorView do
  use ComerierWeb, :view

  def render("422.json", %{changeset: %{errors: errors}}) do
    printable_errors =
      Enum.map(errors, fn {field, {error, _}} ->
        %{field => error}
      end)

    %{errors: printable_errors}
  end
end
