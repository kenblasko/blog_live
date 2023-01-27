defmodule BlogWeb.Admin.DashboardLive do
  use BlogWeb, :live_view
  import BlogWeb.Components

  def render(assigns) do
    ~H"""
    <div>
      <.header>Dashboard (Admin)</.header>
      <.nav {assigns} />
    </div>
    """
  end
end
