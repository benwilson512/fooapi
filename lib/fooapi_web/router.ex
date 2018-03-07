defmodule FooapiWeb.Router do
  use FooapiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FooapiWeb do
    pipe_through :api
  end
end
