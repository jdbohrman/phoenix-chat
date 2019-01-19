# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :src,
  ecto_repos: [Src.Repo]

# Configures the endpoint
config :src, SrcWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+r4YnYwsacTN308xNi7htJF4RxgHXW3zZMYDjlDx9UL31FXwJWJbVMqaf0CbDK/F",
  render_errors: [view: SrcWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Src.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
