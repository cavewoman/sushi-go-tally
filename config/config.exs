# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sushi_go_tally,
  ecto_repos: [SushiGoTally.Repo]

# Configures the endpoint
config :sushi_go_tally, SushiGoTally.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6R5RgXbXoKdUnNto8/LpLXiPDbX6lNsfRe/tx4MrpmECsShx9dgFVvZpk4RBjOF7",
  render_errors: [view: SushiGoTally.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SushiGoTally.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
