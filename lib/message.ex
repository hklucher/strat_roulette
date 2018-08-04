defmodule StratRoulette.Message do
  alias StratRoulette.Strat

  @moduledoc """
  Provides functions for creating messages to respond to the Discord client.
  """

  @base_message "Here's your strat"

  @doc """
  Takes a Strat struct and returns a formatted message
  with the strat's name & description.
  """
  def build(%Strat{} = strat) do
    "#{@base_message}:\n\n#{strat.name}\n\n#{strat.description}"
  end
end
