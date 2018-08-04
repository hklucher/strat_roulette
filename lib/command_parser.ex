defmodule StratRoulette.CommandParser do
  @moduledoc """
  Module that provides functions to parse arguments sent from Discord client
  into arguments that the application can undertand.
  """

  @doc """
  Parses string to the best of its abilities to return a map with :team and :game_type args.
  """
  def parse(command_string) do
    command_string
    |> String.split(" ")
    |> do_parse()
  end

  defp do_parse([""]) do
    %{}
  end

  defp do_parse([team]) do
    %{team: String.downcase(team)}
  end

  defp do_parse([team, game_type]) do
    %{team: String.downcase(team), game_type: String.downcase(game_type)}
  end
end
