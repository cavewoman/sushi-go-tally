defmodule SushiGoTally.Router do
  use SushiGoTally.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SushiGoTally do
    pipe_through :browser # Use the default browser stack

    resources "/games", GameController
    resources "/players", PlayerController
    get "/player_games/new", PlayerGameController, :new
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SushiGoTally do
  #   pipe_through :api
  # end
end
