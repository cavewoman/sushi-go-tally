defmodule SushiGoTally.Game do
  use SushiGoTally.Web, :model

  @derive {Poison.Encoder, except: [:__meta__] }
  schema "games" do
    field :round1, :integer
    field :round2, :integer
    field :round3, :integer
    field :pudding, :integer
    field :winner, :boolean, default: false
    many_to_many :players, SushiGoTally.Player, join_through: "players_games"

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:round1, :round2, :round3, :pudding, :winner])
    |> validate_required([:round1, :round2, :round3, :pudding, :winner])
  end
end
