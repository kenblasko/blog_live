defmodule BlogWeb.Components do
  @moduledoc false
  use BlogWeb, :html

  def nav(assigns) do
    ~H"""
    <nav class="space-x-4">
      <.link navigate={~p"/"}>Home</.link>
      <.link navigate={~p"/admin"}>Dashboard</.link>
      <.link navigate={~p"/admin/users"}>Users</.link>
    </nav>
    """
  end
end
