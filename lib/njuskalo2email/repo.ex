defmodule Njuskalo2email.Repo do
  use Ecto.Repo,
    otp_app: :njuskalo2email,
    adapter: Ecto.Adapters.Postgres
end
