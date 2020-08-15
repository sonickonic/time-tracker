# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :comerier,
  ecto_repos: [Comerier.Repo]

# Configures the endpoint
config :comerier, ComerierWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "N8H9GjLpTGrCPiTy2Razyl453MXeQkZ2WdyHK0zLdPoCMj2eO75i96VTLEuHZAFF",
  render_errors: [view: ComerierWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Comerier.PubSub,
  live_view: [signing_salt: "wvSZJ94N"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, :format_encoders, json: Casex.CamelCaseEncoder

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
