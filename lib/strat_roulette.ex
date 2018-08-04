defmodule StratRoulette do
  alias StratRoulette.Strat

  @moduledoc """
  Handles logic for providing strats.
  """

  @strats [
    %Strat{
      name: "John Wayne",
      description: "All pick a GIGN recuirt with a ballistic shield, revolver, breach charges and frag grenade. As soon as you spawn, press 1 to get your shield in your back and wield your revolver like a treo hero."
      team: "attack"
    },

    %Strat{
      name: "The Most Powerful Guns in the World",
      description: "All pick GIGN recruits with 417, revolver, breach charges and frag grenades. Deal out the damage.",
      team: "attack"
    },

    %Strat{
      name: "The Blind Shield Wall",
      description: "All pick American recruits with a shield, the 5.7, smoke grenades and stun grenades. Open a window (or door) and throw all the nades. Breach.",
      team: "attack"
    },

    %Strat{
      name: "LMG Aplenty",
      description: "All pick Spetznaz recruits with LMG and go full auto on the breachable walls, floors, and doors.",
      team: "attack"
    },

    %Strat{
      name: "Death From Above",
      description: "All place breach charges on the ceiling of the objective room if it's breachable (like in chalet) and detonate the five charges at once. Then, shoot from the room above.",
      team: "attack"
    },

    %Strat{
      name: "Auto-shotgun OP",
      description: "All take an FBI recruit with the automatic shotgun and rush like hell.",
      team: "attack"
    },

    %Strat{
      name: "Auto-shotgun OP",
      description: "All take Spetsnaz recruits with an automatic shotgun and open all the windows, trap doors and doors you can find during the preparation phase.",
      team: "defense"
    },

    %Strat{
      name: "Barbs, Barbs Everywhere",
      description: "All pick GSG9 recruits with the carbine, barb wire and nitro cells. As Germans, you get 3 barb wires each. Cover the entire floor with it.",
      team: "defense"
    },

    %Strat{
      name: "The Best Defense is the Attack",
      description: "All pick SAS recruits with FMG, SMG & nitro. Stay as far away as possible from the objective room. As soon as the attackers plant the diffuser or get in the secure area, rush them.",
      team: "defense"
    },

    %Strat{
      name: "The .45 is King",
      description: "All pick FBI recruits with a UMP45, an M45, nitros and go to war.",
      team: "defense"
    },

    %Strat{
      name: "It's a Trap!",
      description: "All take FBI recruits with the autoshotgun. Put C4 in each corner of the objective room, hide on the floor (but not in the objective room), as soon as they start securing it, detonate the C4 and rush them.",
      team: "defense"
    },

    %Strat{
      name: "I'm here, come get me!",
      description: "All take GIGN recruits with the P90 and the pistol. Place barb wire all over the objective room. As soon as the attackers spawn, you must at least fire one shot every 3 seconds (count to 3, fire, count to 3, fire).",
      team: "defense"
    }
  ]

  def random_attack_strat do
    %Strat{}
  end
end
