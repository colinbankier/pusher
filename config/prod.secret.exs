use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :pusher, Pusher.Endpoint,
  secret_key_base: "s3qg0kpE0oY5Qdq3qIZ8aKsCwYrGEfDr7Ddnyl9bjfG52A8Fta83xk3Ie7VeOzjN"

# Configure your database
config :pusher, Pusher.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "pusher_prod"
