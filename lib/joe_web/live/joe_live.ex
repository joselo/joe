defmodule JoeWeb.JoeLive do
  # In Phoenix v1.6+ apps, the line below should be: use MyAppWeb, :live_view
  use Phoenix.LiveView

  alias Joe.Account

  def mount(_params, _sessions, socket) do
    users = Account.list_users

    socket =
      socket
      |> assign(:users, users)

    {:ok, socket}
  end

  def handle_event("send", params, socket) do
    _user = Account.create_user(params)
    users = Account.list_users

    socket =
      socket
      |> assign(:users, users)

    {:noreply, socket}
  end
end
