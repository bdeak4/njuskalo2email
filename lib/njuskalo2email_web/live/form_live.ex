defmodule Njuskalo2emailWeb.FormLive do
  use Njuskalo2emailWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:query, "")}
  end

  def handle_event("update_autocomplete", %{"value" => query}, socket) do
    {:noreply,
     socket
     |> assign(:query, query)}
  end
end
