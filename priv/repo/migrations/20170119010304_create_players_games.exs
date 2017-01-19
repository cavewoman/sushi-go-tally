defmodule SushiGoTally.Repo.Migrations.CreatePlayersGames do
  use Ecto.Migration

  def up do
    create table(:players_games) do
      add :player_id, :integer
      add :game_id, :integer

      timestamps()
    end

    create index(:players_games, [:player_id, :game_id])
  end
end
