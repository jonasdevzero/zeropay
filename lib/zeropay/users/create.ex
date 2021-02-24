defmodule Zeropay.Users.Create do
  alias Zeropay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
