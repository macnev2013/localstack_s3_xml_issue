import Config

config :ex_aws,
  access_key_id: [
    {:system, "AWS_ACCESS_KEY_ID"},
    {:awscli, "default", 10}
  ],
  secret_access_key: [
    {:system, "AWS_SECRET_ACCESS_KEY"},
    {:awscli, "default", 10}
  ]

config :ex_aws, :s3,
  scheme: "http://",
  host: "localhost",
  port: 4566
