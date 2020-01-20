defmodule ArticlesApp.Repo do
  use Ecto.Repo,
    otp_app: :articles_app,
    adapter: Ecto.Adapters.Postgres
end
