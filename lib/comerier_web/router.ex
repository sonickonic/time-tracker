defmodule ComerierWeb.Router do
  use ComerierWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug Casex.CamelCaseDecoderPlug
  end

  scope "/", ComerierWeb do
    pipe_through :browser

    get "/", TimeEntryController, :index
  end

  scope path: "/api/v1", as: :api_v1, alias: ComerierWeb.Api.V1 do
    pipe_through :api

    resources "/time_entries", TimeEntryController, only: [:create]
  end

  # Other scopes may use custom stacks.
  # scope "/api", ComerierWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: ComerierWeb.Telemetry
    end
  end
end
