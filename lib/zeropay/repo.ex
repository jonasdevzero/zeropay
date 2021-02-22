defmodule Zeropay.Repo do
  use Ecto.Repo,
    otp_app: :zeropay,
    adapter: Ecto.Adapters.Postgres
end
