defmodule ZeropayWeb.UsersController do
  use ZeropayWeb, :controller

  alias Zeropay.User

  action_fallback ZeropayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Zeropay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
