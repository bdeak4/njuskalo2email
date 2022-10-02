defmodule Njuskalo2emailWeb.FormLive do
  use Njuskalo2emailWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:tab, "ads")
     |> assign(:car_model, "")
     |> assign(:car_model_options, [])
     |> assign(:car_sort, "")
     |> assign(:ad_category, "")
     |> assign(:ad_category_options, [])
     |> assign(:ad_query, "")
     |> assign(:ad_query_suggestions, [])
     |> assign(:ad_sort, "")}
  end

  def handle_event("set_tab", %{"value" => tab}, socket) do
    {:noreply,
     socket
     |> assign(:tab, tab)}
  end

  def handle_event("set_ad_query", %{"value" => query}, socket) do
    {:noreply,
     socket
     |> assign(:ad_query, query)}
  end
end

# tab (checkbox)
#   cars
#     car model (select with tree style data)
#     sort (select)
#   ads
#     category (select with tree style data)
#     query (input with suggestions)
#     sort (select)
