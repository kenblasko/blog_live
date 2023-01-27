import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blog, BlogWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "S1ylu+HNqf2Ik1dJFAw2boX2dtSn8Eil36ZKZqoiAWdPZhWVp10LRR88IaMjOJAC",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
