defmodule SushiGoTally.GameTest do
  use SushiGoTally.ModelCase

  alias SushiGoTally.Game

  @valid_attrs %{pudding: 42, round1: 42, round2: 42, round3: 42, winner: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Game.changeset(%Game{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Game.changeset(%Game{}, @invalid_attrs)
    refute changeset.valid?
  end
end
