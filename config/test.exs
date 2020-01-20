use Mix.Config

# Configure your database
config :articles_app, ArticlesApp.Repo,
  username: "postgres",
  password: "docker",
  database: "articles_app_test",
  hostname: "localhost",
  port: 5433,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :articles_app, ArticlesAppWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :bcrypt_elixir, :log_rounds, 4