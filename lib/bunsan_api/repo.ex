defmodule BunsanApi.Repo do
  use Ecto.Repo,
    otp_app: :bunsan_api,
    adapter: Ecto.Adapters.Postgres
end
