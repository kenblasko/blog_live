defmodule BlogWeb.Router do
  use BlogWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_live_flash)
    plug(:put_root_layout, {BlogWeb.Layouts, :root})
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  forward("/admin", BlogWeb.AdminRouter)

  live_session :default do
    scope "/", BlogWeb do
      pipe_through(:browser)

      live("/", PageLive)
    end
  end
end
