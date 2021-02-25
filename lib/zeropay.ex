defmodule Zeropay do
  alias Zeropay.Users.Create, as: UserCreate

  alias Zeropay.Accounts.Deposit

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call
end
