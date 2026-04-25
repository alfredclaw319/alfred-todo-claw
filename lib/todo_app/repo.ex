defmodule TodoApp.Repo do
  use Ecto.Repo,
    otp_app: :todo_app,
    adapter: Application.compile_env(:todo_app, :repo_adapter, Ecto.Adapters.SQLite3)
end
