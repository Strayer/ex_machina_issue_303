defmodule ExMachinaRelatedDataOrderWeb.Router do
  use ExMachinaRelatedDataOrderWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ExMachinaRelatedDataOrderWeb do
    pipe_through :api
  end
end
