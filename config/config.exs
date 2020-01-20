# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :articles_app,
  ecto_repos: [ArticlesApp.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :articles_app, ArticlesAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8EkA652EYPGRaBemXBK9b3MUB1V7dzVnvhAQ9W5kK3z3PO/RQkyrfZR/BEgQMjV/",
  render_errors: [view: ArticlesAppWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ArticlesApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
