defmodule ZeropayWeb.AccountsController do
  use ZeropayWeb, :controller

  alias Zeropay.Account

  action_fallback ZeropayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Zeropay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end
end
