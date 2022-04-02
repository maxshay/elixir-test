import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :barnicle_api, BarnicleApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "1WsMQiQKYgoJLjv+Ru5wiC3wbM9x3eBW7f/zvwe/yPzHDfWZCEQ4ObgKhe3MYqBb",
  server: false

# In test we don't send emails.
config :barnicle_api, BarnicleApi.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
