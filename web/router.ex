defmodule Pusher.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Pusher do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  socket "/ws", Pusher do
    channel "stream", StreamChannel
  end

  # Other scopes may use custom stacks.
  # scope "/api", Pusher do
  #   pipe_through :api
  # end
end
