defmodule StratRoulette.Bot do
  use Application

  alias Alchemy.Client

  alias StratRoulette.Message

  defmodule Commands do
    use Alchemy.Cogs

    Cogs.set_parser(:strat, &List.wrap/1)
    Cogs.def strat(content) do
      details = StratRoulette.CommandParser.parse(content)

      strat = StratRoulette.random_strat(details)

      response = Message.build(strat)

      Cogs.say(response)
    end
  end

  def start(_type, _args) do
    run = Client.start(System.get_env("STRAT_ROULETTE_BOT_TOKEN"))
    use Commands
    run
  end
end
