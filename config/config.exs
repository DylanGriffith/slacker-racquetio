# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :slacker_racquetio, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:slacker_racquetio, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"

config :slacker,
  command_prefix: ["racquetbot", "rb"],
  slack_api_token: System.get_env("SLACK_API_TOKEN"),
  parsers: [SlackerRacquetio.Parsers.Infix, Slacker.Parsers.Prefix],
  commands: [ Slacker.Commands.Echo, Slacker.Commands.Ping, SlackerRacquetio.Commands.Beat ],
  allow_direct_messages: true,
  racquet_club_id: System.get_env("RACQUET_CLUB_ID")
