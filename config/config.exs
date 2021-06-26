# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :challenge_rush,
  ecto_repos: [ChallengeRush.Repo]

# Configures the endpoint
config :challenge_rush, ChallengeRushWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3PmsWQuoGlC+Wj/pwdJ23g3V9CrSv3c7raNm07EyNxvzwtKXVawH5UHTZWh0bEtF",
  render_errors: [view: ChallengeRushWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ChallengeRush.PubSub,
  live_view: [signing_salt: "e3YR+9Lu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
