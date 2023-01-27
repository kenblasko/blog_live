defmodule BlogWeb.AdminRouter do
  use BlogWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_live_flash)
    plug(:put_root_layout, {BlogWeb.Layouts, :admin_root})
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  live_session :admin do
    scope "/", BlogWeb.Admin do
      pipe_through(:browser)

      live("/", DashboardLive)
      live("/users", UsersLive)
    end
  end
end
