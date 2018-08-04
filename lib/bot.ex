defmodule StratRoulette.Bot do
  use Application

  alias Alchemy.Client

  defmodule Commands do
    use Alchemy.Cogs

    Cogs.def strat do
      Cogs.say("I'd give you a strat here...IF I HAD ONE.")
    end
  end

  def start(_type, _args) do
    run = Client.start(System.get_env("STRAT_ROULETTE_BOT_TOKEN"))
    use Commands
    run
  end
end
