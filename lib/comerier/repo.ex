defmodule Comerier.Repo do
  use Ecto.Repo,
    otp_app: :comerier,
    adapter: Ecto.Adapters.Postgres
end
