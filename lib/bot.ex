defmodule StratRoulette.Bot do
  use Application

  alias Alchemy.Client

  defmodule Commands do
    use Alchemy.Cogs

    Cogs.def ping do
      Cogs.say("pong!")
    end
  end

  def start(_type, _args) do
    run = Client.start(Application.get_env(:strat_roulette, :bot_token))
    use Commands
    run
  end
end
