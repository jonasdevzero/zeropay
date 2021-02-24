defmodule Zeropay do
  alias Zeropay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
