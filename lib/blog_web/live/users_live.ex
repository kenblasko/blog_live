defmodule BlogWeb.Admin.UsersLive do
  use BlogWeb, :live_view
  import BlogWeb.Components

  def render(assigns) do
    ~H"""
    <div>
      <.header>Users (Admin)</.header>
      <.nav {assigns} />
    </div>
    """
  end
end
