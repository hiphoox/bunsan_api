# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bunsan_api,
  ecto_repos: [BunsanApi.Repo]

# Configures the endpoint
config :bunsan_api, BunsanApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UeDvmjDzSVsXSuE9WQl28e/QQPvzKgjENylOxRh34AfPdzCfOE0F901VJm3kZSBy",
  render_errors: [view: BunsanApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BunsanApi.PubSub,
  live_view: [signing_salt: "yW6RJGyG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
