defmodule Njuskalo2email.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Njuskalo2email.Repo,
      # Start the Telemetry supervisor
      Njuskalo2emailWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Njuskalo2email.PubSub},
      # Start the Endpoint (http/https)
      Njuskalo2emailWeb.Endpoint
      # Start a worker by calling: Njuskalo2email.Worker.start_link(arg)
      # {Njuskalo2email.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Njuskalo2email.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Njuskalo2emailWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
