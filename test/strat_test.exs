defmodule StratRoulette.StratTest do
  alias StratRoulette.Strat

  use ExUnit.Case

  doctest StratRoulette.Strat

  test "has a name" do
    strat = %Strat{name: "Test Strat"}
    assert strat.name == "Test Strat"
  end

  test "has a description" do
    strat = %Strat{description: "Description"}
    assert strat.description == "Description"
  end

  test "has a team" do
    strat = %Strat{team: "attack"}
    assert strat.team == "attack"
  end

  test "has game_types" do
    strat = %Strat{game_types: ["hostage"]}
    assert strat.game_types == ["hostage"]
  end
end
