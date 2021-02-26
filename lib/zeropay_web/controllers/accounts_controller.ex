defmodule ZeropayWeb.AccountsController do
  use ZeropayWeb, :controller

  alias Zeropay.Account
  alias Zeropay.Accounts.Transactions.Response, as: TransactionResponse

  action_fallback ZeropayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Zeropay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Zeropay.withdraw(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Zeropay.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transaction.json", transaction: transaction)
    end
  end
end
