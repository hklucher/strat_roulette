defmodule StratRouletteTest do
  alias StratRoulette.CommandParser

  use ExUnit.Case

  doctest StratRoulette

  describe "parse/1" do
    test "returns a map" do
      assert is_map(CommandParser.parse("attack bomb"))
    end

    test "returns a team key matching the first word" do
      result = CommandParser.parse("defense")

      assert result[:team] == "defense"
    end

    test "returns a team key when there are two words" do
      result = CommandParser.parse("attack hostage")

      assert result[:team] == "attack"
    end

    test "returns a game_type key when there are two words" do
      result = CommandParser.parse("attack hostage")

      assert result[:game_type] == "hostage"
    end

    test "returns an empty map given an empty string" do
      result = CommandParser.parse("")

      assert result == %{}
    end
  end
end
