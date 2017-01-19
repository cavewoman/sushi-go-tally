defmodule SushiGoTally.Repo.Migrations.CreateGame do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :round1, :integer
      add :round2, :integer
      add :round3, :integer
      add :pudding, :integer
      add :winner, :boolean, default: false, null: false

      timestamps()
    end

  end
end
