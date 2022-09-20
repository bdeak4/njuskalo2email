defmodule Njuskalo2emailWeb.PageController do
  use Njuskalo2emailWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
