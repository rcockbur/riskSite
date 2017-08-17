class Unit
  def self.UNITS
    return {
        :worker => {
            :name => 'Worker',
            :attributes => ['Infantry'],
            :desc => 'Workers build all your structures. They can also attack with their pistol, but deal very little damage and have low health.',
            :abilities => [ability(:buildStructure)],
            :special_rules => ["When workers dig a trench, they do not occupy it automatically. This allows them to queue up many at once."],
            :strong => 'Workers are very ineffective as soldiers, and should mostly be used for building structures.',
            :weak => '',
            :img => 'worker.jpg',
        },
        :rifle => {
            :name => 'Riflemen',
            :attributes => ['Infantry'],
            :desc => 'Riflemen are the cheapest military unit available. They deal little damage, but are very mobile.',
            :abilities => [ability(:buildTrench)],
            :special_rules => [rule(:bayonet)],
            :strong => 'Mortar, Howitzer',
            :weak => 'Machine Gun, Field Gun',
            :img => 'rifle.jpg',
        },
        :mg => {
            :name => 'Machine Gun',
            :attributes => ['Infantry'],
            :desc => 'Machine Guns can run and shoot like a riflemen, but can also stop to deploy their powerful machine gun. They automatically use their machine-gun when occupying a trench.',
            :abilities => [ability(:buildTrench), ability(:setupMG)],
            :special_rules => [],
            :strong => 'Riflemen',
            :weak => 'Trench, Tank, Field Gun, Mortar',
            :img => 'mg.jpg',
        },
        :mortar => {
            :name => 'Mortar',
            :attributes => ['Infantry'],
            :desc => 'Mortars have more range than riflemen or machine guns, but less overall damage. They do however get a large bonus vs Structures, Ships, and Tanks.',
            :abilities => [ability(:buildTrench)],
            :special_rules => [],
            :strong => 'Trench, Machine Gun, Tank',
            :weak => 'Riflemen, Field Gun',
            :img => 'mortar.jpg',
        },
        :militia => {
            :name => 'Militia',
            :attributes => ['Infantry'],
            :desc => 'Militia cannot be trained like other units, but are instead spawned by Cities or Capitols using the Call-to-Arms ability. They also appear amongst the rebels in the Russian Revolution and the Easter Uprising. Militia are similar to Riflemen, but have less life and damage.',
            :abilities => [],
            :special_rules => [],
            :strong => '',
            :weak => '',
            :img => 'militia.jpg',
        },
        :fg => {
            :name => 'Field Gun',
            :attributes => ['Artillery'],
            :desc => 'Field Guns are light artillery. They fire a shrapnel shell deals splash damage to units in a wide area, dealing bonus damage to infantry.',
            :abilities => [ability(:setupArtillery), ability(:faceTarget)],
            :special_rules => [],
            :strong => 'Riflemen, Mortar, Machine Gun',
            :weak => 'Howitzer, Tank',
            :img => 'fg.jpg',
        },
        :howitzer => {
            :name => 'Howitzer',
            :attributes => ['Artillery'],
            :desc => 'Howitzers are heavy artillery. They fire a high-explosive shell that deals bonus damage vs Artillery, Tanks, Structures, and Ships.',
            :abilities => [ability(:setupArtillery), ability(:faceTarget), ability(:loadGasAttack)],
            :special_rules => [],
            :strong => 'Field Gun, Trench, Fortress',
            :weak => 'Riflemen,',
            :img => 'howitzer.jpg',
        },
        :railway => {
            :name => 'Railway Gun',
            :attributes => ['Artillery'],
            :desc => 'Railway Guns heavy artillery. They are similar to howitzers, but have more range, and more damage vs Structures',
            :abilities => [ability(:setupArtillery), ability(:faceTarget)],
            :special_rules => [],
            :strong => 'Howitzer, Field Gun, Trench, Fortress',
            :weak => 'Riflemen',
            :img => 'rg.jpg',
        },
        :tank => {
            :name => 'Tank',
            :attributes => ['Armored'],
            :desc => 'Tanks are the only unit that can withstand machine-gun fire, making them useful as front-line troops. ',
            :abilities => [],
            :special_rules => [],
            :strong => 'Machine Gun, Field Gun',
            :weak => 'Riflemen, Mortar, Fortress',
            :img => 'tank.jpg',
        },
        :balloon => {
            :name => 'Observation Balloon',
            :attributes => ['Flying'],
            :desc => 'Balloons are slow and cannot attack, but they can see very far. Use them to see over terrain and spot distant units.',
            :abilities => [],
            :special_rules => [],
            :strong => '',
            :weak => 'Airplane, Riflemen, Machine Gun, Destroyer',
            :img => 'balloon.jpg',
        },
        :airplane => {
            :attributes => ['Flying'],
            :name => 'Airplane',
            :desc => 'Airplanes can see almost as far as balloons, but are much faster and can shoot other air units.',
            :abilities => [],
            :special_rules => [],
            :strong => 'Observation Balloon',
            :weak => 'Riflemen, Machine Gun, Destroyer',
            :img => 'airplane.jpg',
        },
        :battleship => {
            :attributes => ['Naval,', 'Massive'],
            :name => 'Battleship',
            :desc => 'Battleships are very tough and have powerful attack that deals splash damage',
            :abilities => [ability(:pickUpMine)],
            :special_rules => [],
            :strong => 'Destroyer, Land units',
            :weak => 'Submarine, Mine',
            :img => 'battleship.jpg',
        },
        :destroyer => {
            :name => 'Destroyer',
            :attributes => ['Naval'],
            :desc => 'Destroyers are fast warships that can scan their surroundings for submarines or mines.',
            :abilities => [ability(:scanTheDepths), ability(:pickUpMine)],
            :special_rules => [],
            :strong => 'Submarine, Mine',
            :weak => 'Battleship, Fortress',
            :img => 'destroyer.jpg',
        },
        :submarine => {
            :name => 'Submarine',
            :attributes => ['Naval'],
            :desc => 'Submarines deal alot of damage, but are very fragile. They can submerge under water, making them invisible unless spotted by an enemy Destroyer or Port.',
            :abilities => [ability(:submerge), ability(:pickUpMine)],
            :special_rules => [],
            :strong => 'Battleship',
            :weak => 'Destroyer, Mine',
            :img => 'submarine.jpg',
        },
        :transport => {
            :name => 'Transport',
            :attributes => ['Naval'],
            :desc => 'Transports can load and unload units, allowing them to move across the water.',
            :abilities => [],
            :special_rules => [],
            :strong => '',
            :weak => 'Battleship, Destroyer, Submarine, Mine',
            :img => 'transport.jpg',
        },
        :mine => {
            :name => 'Mine',
            :attributes => ['Naval'],
            :desc => 'Mines detonate on enemy ships that come too close, killing them instantly.',
            :abilities => [],
            :special_rules => [],
            :strong => 'Battleship, Submarine, Transport',
            :weak => 'Destoyer, Port',
            :img => 'mine.jpg',
        },
    }
  end

  def self.ABILITIES
    return {
        :buildStructure => {
            :name => 'Build Structure',
            :desc => 'Builds any of the available structures.',
        },

        :buildTrench => {
            :name => 'Dig Trench',
            :desc => 'Builds a trench. Each trench can hold a single infantry occupant, allowing it fire from within. A unit inside a trench is protected against most types of damge, and can still attack.'
        },

        :setupMG => {
            :name => 'Setup Machine Gun',
            :desc => "Enables the machine gun's rapid-fire weapon, but renders it immobile. The machine gun is setup automatically when inside a trench.",
        },

        :setupArtillery => {
            :name => 'Setup Artillery',
            :desc => "Enables the artillery's long-range weapon, but renders it immobile. Once setup, artillery can only shoot towards the side they're facing.",
        },

        :faceTarget => {
            :name => 'Face Target',
            :desc => 'Rotates towards the target location. Useful for ensuring the artillery is facing the right direction before setting up',
        },

        :loadGasAttack => {
            :name => 'Load Gas Attack',
            :desc => 'Loads a a gas shell into the howitzer, which will be fired with the next shot. Gas spreads over an area, damaging infantry units, and dealing bonus damage to those inside trenches.',
        },

        :submerge => {
            :name => 'Submerge',
            :desc => 'Diving beneath the sea, the submarine becomes invisible to enemies, but loses movement speed. While submerged, it can be spotted by enemy ports and destroyers.',
        },

        :scanTheDepths => {
            :name => 'Scan the Depths',
            :desc => 'Searches the sea for hidden units. The destroyer temporarily gains the ability to detect submarines and mines, at the cost of movement speed.',
        },

        :pickUpMine => {
            :name => 'Carry Mines',
            :desc => 'Can pick up mines and drop them off at target locations.',
        },

        :callToArms => {
            :name => 'Call to Arms',
            :desc => 'Sacrifices population to summon an instant militia army with timed life.',
        },
    }
  end

  def self.RULES
    return {
      :bayonet => 'Uses the bayonet when attacking trenches at melee range. In addition to damaging the trench, the bayonet also damages the unit inside.',
    }
  end

  def self.NATIONS
    return {
      :germany => {
          :desc => "Germany is the most powerful nation in the game, with the most income, and also the largest army at the start. Unfortunately, it is also sandwiched between two large opponents, France and Russia. it's large size, plus it's precarious position, make Germany the most important nation in the game."
      },
      :austria => {
          :desc => "Austria is a major nation that is surrounded by three enemies, Russia, Italy, and Serbia. Russia is the most dangerous, but is often occupied by your allies. Italy is small, but only has one front to focus on, and is the main threat. Serbia is not very dangerous, as it is very small, and usually occupied with Bulgaria from the start."
      },
      :britain => {
          :desc => "Britain is in a unique position, with two starting areas, the British Isles and Egypt. It also starts with the largest navy, and periodically recieves reinforcements by sea. Your main concern as Britain is the Ottomans Empire, but still defend your home islands, and consider helping in France."
      },
      :france=> {
          :desc => "France is a major nation that only has one front, Germany. As a result, your strategy as France really depends on what Germany does. If Germany is focusing on you, play defensive. If Germany is focusing on Russia (or anywhere else), play more agressive."
      },
      :italy=> {
          :desc => "Italy is similar to France, in that it has a single front with a larger opponent. As such, your strategy is dependant on what Austria does. The main difference is that Italy is also very coastal, which can pose a problem if the Ottomans come to dominate the sea."
      },
      :russia=> {
          :desc => ""
      },
      :serbia => {
          :desc => ""
      },
      :bulgaria => {
          :desc => ""
      },
      :ottomans => {
          :desc => ""
      },
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