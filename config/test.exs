use Mix.Config

config :myapp1,
  secret: "myapp1secret"

config :myapp2,
  secret: "myapp2secret",
  salt: "myapp2salt"
