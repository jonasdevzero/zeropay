defmodule ZeropayWeb.FallbackController do
  use ZeropayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ZeropayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
