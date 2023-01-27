defmodule BlogWeb.PageLive do
  use BlogWeb, :live_view
  import BlogWeb.Components

  def render(assigns) do
    ~H"""
    <div>
      <.header>Page</.header>
      <.nav {assigns} />
    </div>
    """
  end
end
