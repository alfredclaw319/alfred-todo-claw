defmodule TodoApp.Repo.Migrations.MarkBuyStonksComplete do
  use Ecto.Migration

  def up do
    execute """
    UPDATE todos
    SET completed = TRUE, updated_at = CURRENT_TIMESTAMP
    WHERE completed = FALSE
      AND (
        title ILIKE '%stonk%'
        OR notes ILIKE '%stonk%'
        OR title ILIKE '%stock%'
        OR notes ILIKE '%stock%'
      )
    """
  end

  def down do
    :ok
  end
end
