class Unit
  def self.UNITS
    return {
        :rifle => {
            :name => 'Riflemen',
            :desc => 'Riflemen are a cheap and well-rounded unit. They are decently fast and good for occupying trenches, serving as mobile reserves, and breaching enemy lines.',
            :abilities => [ability(:buildTrench)],
            :special_rules => [rule(:occupyTrench), rule(:bayonet)],
            :strong => 'Mortars, Howitzers',
            :weak => 'Machine Guns, Field Guns',
            :img => 'rifle.jpg',
        },
        :mg => {
            :name => 'Machine Gun',
            :desc => 'Machine Guns can run and shoot like a riflemen, but can also stop to deploy their powerful machine gun. They automatically use their machine-gun when occupying a trench.',
            :abilities => [ability(:buildTrench), ability(:setupWeapon), ability(:packWeapon)],
            :special_rules => [rule(:occupyTrench), rule(:mgTrench)],
            :strong => 'Infantry, Almost anything that comes too close',
            :weak => 'Trenches, Tanks, Field Guns',
            :img => 'mg_mobile.jpg',
        },
        :mortar => {
            :name => 'Mortar',
            :desc => 'Mortars have more range than riflemen or machine guns, but less overall damage. They do however get a large bonus vs Structures, Ships, and Tanks.',
            :abilities => [ability(:buildTrench)],
            :special_rules => [rule(:occupyTrench)],
            :strong => 'Trenches, Machine Guns, Ships, Tanks',
            :weak => 'Riflemen, Field Guns',
            :img => 'mortar.jpg',
        },
        :fg => {
            :name => 'Field Gun',
            :desc => 'Field Guns are light artillery. They fire a shrapnel shell deals splash damage to units in a wide area, dealing bonus damage to infantry.',
            :abilities => [ability(:setupWeapon), ability(:packWeapon), ability(:faceTarget)],
            :special_rules => [rule(:direction)],
            :strong => 'Infantry',
            :weak => 'Howitzers, Tanks',
            :img => 'fg_mobile.jpg',
        },
        :howitzer => {
            :name => 'Howitzer',
            :desc => 'Howitzers are heavy artillery. They fire a high-explosive shell that deals bonus damage vs Artillery, Tanks, Structures, and Ships.',
            :abilities => [ability(:setupWeapon), ability(:packWeapon), ability(:faceTarget), ability(:loadGasAttack)],
            :special_rules => [rule(:direction)],
            :strong => 'Artillery, Tanks, Structures, and Ships',
            :weak => 'Infantry',
            :img => 'howitzer_mobile.jpg',
        },
        :balloon => {
            :name => 'Observation Balloon',
            :desc => 'Balloons can see farther than any other unit. Use them to see over terrain and spot distant units.',
            :abilities => [],
            :special_rules => [],
            :strong => '',
            :weak => '',
            :img => 'balloon.jpg',
        },
        :airplane => {
            :name => 'Airplane',
            :desc => 'Airplanes can see almost as far as balloons, but are much faster and can shoot other air units.',
            :abilities => [],
            :special_rules => [],
            :strong => 'Balloons',
            :weak => '',
            :img => 'airplane.jpg',
        },
        :tank => {
            :name => 'Tank',
            :desc => 'Tanks are the only unit that can withstand machine-gun fire, making them useful as front-line troops. ',
            :abilities => [],
            :special_rules => [],
            :strong => 'Machine Gun, Field Gun',
            :weak => 'Riflemen, Mortars, Howitzers',
            :img => 'tank.jpg',
        },
        :railway => {
            :name => 'Railway Gun',
            :desc => 'Railway Guns heavy artillery. They are similar to howitzers, but have more range, and more damage vs Structures',
            :abilities => [ability(:setupWeapon), ability(:packWeapon), ability(:faceTarget)],
            :special_rules => [rule(:direction)],
            :strong => 'Artillery, Tanks, Structures, Ships',
            :weak => 'Infantry',
            :img => 'rg_mobile.jpg',
        },
        :battleship => {
            :name => 'Battleship',
            :desc => 'Battleships are very tough and have powerful attack that deals splash damage',
            :abilities => [ability(:pickUpMine), ability(:layMine)],
            :special_rules => [],
            :strong => 'Destroyer, Anything to close to the coast',
            :weak => 'Submarines, Mines, Fortress',
            :img => 'battleship.jpg',
        },
        :destroyer => {
            :name => 'Destroyer',
            :desc => 'Destroyers are fast warships that can scan their surroundings for submarines or mines.',
            :abilities => [ability(:scanTheDepths), ability(:pickUpMine), ability(:layMine)],
            :special_rules => [],
            :strong => 'Submarines, Mines',
            :weak => 'Battleships, Fortress, Mortars',
            :img => 'destroyer.jpg',
        },
        :submarine => {
            :name => 'Submarine',
            :desc => 'Submarines deal alot of damage, but are very fragile. They can submerge under water, making them invisible unless spotted by an enemy Destroyer or Port.',
            :abilities => [ability(:submerge), ability(:surface), ability(:pickUpMine), ability(:layMine)],
            :special_rules => [],
            :strong => 'Battleships',
            :weak => 'Destroyers',
            :img => '',
        },
        :transport => {
            :name => 'Transport',
            :desc => 'Transports can load and unload units, allowing them to move across the water.',
            :abilities => [],
            :special_rules => [],
            :strong => '',
            :weak => '',
            :img => 'transport.jpg',
        },
        :mine => {
            :name => 'Mine',
            :desc => 'Mines detonate on enemy ships that come too close, killing them instantly.',
            :abilities => [],
            :special_rules => [],
            :strong => 'Ships',
            :weak => 'Destoyers scan ability, Ports',
            :img => 'mine.jpg',
        },
        :worker => {
            :name => 'Worker',
            :desc => 'Workers build all your Structures. Most importantly, they can build the Barracks and Factory, which in turn can build all your units.',
            :abilities => [ability(:buildStructure)],
            :special_rules => [rule(:occupyTrench)],
            :strong => '',
            :weak => '',
            :img => 'worker.jpg',
        }
    }
  end

  def self.ABILITIES
    return {
        :buildStructure => {
            :name => 'Build Structure',
            :desc => '',
        },

        :buildTrench => {
            :name => 'Build Trench',
            :desc => 'Builds a Trench. Infantry units can occupy the trench and attack from safety.'
        },

        :setupWeapon => {
            :name => 'Setup Weapon',
            :desc => "Stops the caster in place, but enables it's main weapon.",
        },

        :packWeapon => {
            :name => 'Pack Weapon',
            :desc => "Allows the caster to move again, but disables it's main weapon",
        },

        :faceTarget => {
            :name => 'Face Target',
            :desc => 'Turns the caster to face the target location. Useful for ensuring the Artillery is facing the right direction before setting up',
        },

        :loadGasAttack => {
            :name => 'Load Gas Attack',
            :desc => 'Loads the Howitzer with a gas shell, which will be fired with the next shot. Gas damages infantry units in an area, especially those inside trenches.',
        },

        :submerge => {
            :name => 'Submerge',
            :desc => 'The Submarine submerges under the sea. It becomes invisible to enemies, but loses movement speed. While submerged it can be spotted by an enemy Port or Destroyer.',
        },

        :surface => {
            :name => 'Surface',
            :desc => "The Submarine returns to the surface. It becomes visible and recovers movement speed.",
        },

        :scanTheDepths => {
            :name => 'Scan the Depths',
            :desc => 'The Destroyer searches the sea. It temporarily slows down but gains the ability to detect submerged Mines and Submarines.',
        },

        :pickUpMine => {
            :name => 'Pick up Mine',
            :desc => 'The Ship picks up a mine. Ships can carry up to 8 mines at once.',
        },

        :layMine => {
            :name => 'Lay Mine',
            :desc => 'The Ship places a mine at the target location. The Mine becomes invisible shortly after being placed.',
        },

        :callToArms => {
            :name => 'Call to Arms',
            :desc => 'The City sacrifices population to summon an instant Militia army with timed life.',
        },
    }
  end

  def self.RULES
    return {
      :occupyTrench => "Can occupy trench to fire from safety",
      :bayonet => 'Has two weapons, the bolt-action rifle and the bayonet. The bayonet is used when attacking enemy trenches at melee range. The bayonet deals damage to the trench AND any unit inside.',
      :mgTrench => "Automatically uses main weapon when in a trench.",
      :direction => "Can only fire in one direction, and cannot rotate when setup.",
    }
  end

  def self.getUnit(unit)
    return self.UNITS[unit]
  end

  def self.ability(ability)
    return self.ABILITIES[ability]
  end

  def self.rule(rule)
    return self.RULES[rule]
  end
end