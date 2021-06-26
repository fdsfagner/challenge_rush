defmodule ChallengeRush.Repo do
  use Ecto.Repo,
    otp_app: :challenge_rush,
    adapter: Ecto.Adapters.Postgres
end
