defmodule SushiGoTally.Player do
  use SushiGoTally.Web, :model

  schema "players" do
    field :name, :string
    many_to_many :games, SushiGoTally.Game, join_through: "players_games"

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
