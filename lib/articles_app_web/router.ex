defmodule ArticlesAppWeb.Router do
  use ArticlesAppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ArticlesAppWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
