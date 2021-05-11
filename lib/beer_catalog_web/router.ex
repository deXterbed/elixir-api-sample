defmodule BeerCatalogWeb.Router do
  use BeerCatalogWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BeerCatalogWeb do
    pipe_through :api
    resources "/beers", BeerController, except: [:new, :edit]
  end
end
