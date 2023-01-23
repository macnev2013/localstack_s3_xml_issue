import Config

config :ex_aws,
  region: "us-east-2",
  json_codec: Jason

import_config "#{config_env()}.exs"
