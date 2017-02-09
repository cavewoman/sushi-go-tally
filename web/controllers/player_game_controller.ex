defmodule SushiGoTally.PlayerGameController do
  use SushiGoTally.Web, :controller

  alias SushiGoTally.PlayerGame
  alias SushiGoTally.Game
  alias SushiGoTally.Player

  def index(conn, _params) do
    games = Repo.all(PlayerGame)
    render(conn, "index.html", games: games)
  end

  def new(conn, _params) do
    changeset = Game.changeset(%Game{})
    players = Repo.all(from p in Player, preload: :games) |> Enum.map(&{&1.name, &1.id})
    # players = Repo.all(Player)
    render(conn, "new.html", changeset: changeset, players: players)
  end

  # def create(conn, %{"game" => game_params}) do
  #   changeset = Game.changeset(%Game{}, game_params)
  #
  #   case Repo.insert(changeset) do
  #     {:ok, _game} ->
  #       conn
  #       |> put_flash(:info, "Game created successfully.")
  #       |> redirect(to: game_path(conn, :index))
  #     {:error, changeset} ->
  #       render(conn, "new.html", changeset: changeset)
  #   end
  # end
  #
  # def show(conn, %{"id" => id}) do
  #   game = Repo.get!(Game, id)
  #   render(conn, "show.html", game: game)
  # end
  #
  # def edit(conn, %{"id" => id}) do
  #   game = Repo.get!(Game, id)
  #   changeset = Game.changeset(game)
  #   render(conn, "edit.html", game: game, changeset: changeset)
  # end
  #
  # def update(conn, %{"id" => id, "game" => game_params}) do
  #   game = Repo.get!(Game, id)
  #   changeset = Game.changeset(game, game_params)
  #
  #   case Repo.update(changeset) do
  #     {:ok, game} ->
  #       conn
  #       |> put_flash(:info, "Game updated successfully.")
  #       |> redirect(to: game_path(conn, :show, game))
  #     {:error, changeset} ->
  #       render(conn, "edit.html", game: game, changeset: changeset)
  #   end
  # end
  #
  # def delete(conn, %{"id" => id}) do
  #   game = Repo.get!(Game, id)
  #
  #   # Here we use delete! (with a bang) because we expect
  #   # it to always work (and if it does not, it will raise).
  #   Repo.delete!(game)
  #
  #   conn
  #   |> put_flash(:info, "Game deleted successfully.")
  #   |> redirect(to: game_path(conn, :index))
  # end
end
