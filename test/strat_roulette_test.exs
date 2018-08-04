defmodule StratRouletteTest do
  alias StratRoulette.Strat

  use ExUnit.Case

  doctest StratRoulette
  
  describe "random_attack_strat" do
    test "returns a strat" do
      strat = StratRoulette.random_attack_strat()
      assert %Strat{} = strat
    end
  end
end
