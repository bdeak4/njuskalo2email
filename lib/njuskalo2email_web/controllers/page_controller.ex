defmodule Njuskalo2emailWeb.PageController do
  use Njuskalo2emailWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
