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

  test "type" do
    strat = %Strat{type: "attack"}
    assert strat.type == "attack"
  end
end
