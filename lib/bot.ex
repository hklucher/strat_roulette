defmodule StratRoulette.Bot do
  use Application

  alias Alchemy.Client

  defmodule Commands do
    use Alchemy.Cogs

    Cogs.set_parser(:strat, &List.wrap/1)
    Cogs.def strat(content) do
      details = StratRoulette.CommandParser.parse(content)

      IO.inspect StratRoulette.random_strat(details)
      # Pass content to CommandParser
      # CommandParser converts to array
      # Returns array for args
      #
      # CommandParser.parse("attack secure")
      # %{team: "defense", game_type: "secure"}
      #
      # CommandParser.parse("")
      # %{team: "attack", game_type: "bomb"}

      # !strat attack bomb
      # IF team is nil, default to attack
      # IF game_type is nil, default to bomb

      Cogs.say("I'd give you a strat here...IF I HAD ONE.")
    end
  end

  def start(_type, _args) do
    run = Client.start(System.get_env("STRAT_ROULETTE_BOT_TOKEN"))
    use Commands
    run
  end
end
