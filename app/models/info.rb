class Info
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
        :desc => 'Riflemen are the cheapest military unit available. Although they deal little damage, they are very mobile and effective when massed.',
        :abilities => [ability(:buildTrench)],
        :special_rules => [rule(:bayonet)],
        :strong => 'Mortar, Howitzer',
        :weak => 'Machine Gun, Field Gun',
        :img => 'rifle.jpg',
      },
      :mg => {
        :name => 'Machine Gun',
        :attributes => ['Infantry'],
        :desc => 'Machine guns can run and shoot like a riflemen, but can also stop to deploy their powerful machine gun. They automatically switch to their machine gun when occupying a trench. Machine guns deal bonus damage to infantry units.',
        :abilities => [ability(:buildTrench), ability(:setupMG)],
        :special_rules => [],
        :strong => 'Riflemen',
        :weak => 'Trench, Tank, Field Gun, Mortar',
        :img => 'mg.jpg',
      },
      :mortar => {
        :name => 'Mortar',
        :attributes => ['Infantry'],
        :desc => 'Mortars have more range than riflemen or machine guns, but less overall damage. They deal bonus damage to structures, ships, and tanks.',
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
        :desc => 'Field Guns are light artillery. They fire a shrapnel shell that deals splash damage to infantry units in a wide area. Field guns are mostly useless against anything beside infantry.',
        :abilities => [ability(:setupArtillery), ability(:faceTarget)],
        :special_rules => [],
        :strong => 'Riflemen, Mortar, Machine Gun',
        :weak => 'Howitzer, Tank',
        :img => 'fg.jpg',
      },
      :howitzer => {
        :name => 'Howitzer',
        :attributes => ['Artillery'],
        :desc => 'Howitzers are heavy artillery. They fire a high-explosive shell that deal splash damage to infantry and trenches in a small radius. Deals bonus damage to tanks, structures, and ships.',
        :abilities => [ability(:setupArtillery), ability(:faceTarget), ability(:loadGasAttack)],
        :special_rules => [],
        :strong => 'Field Gun, Trench, Fortress',
        :weak => 'Riflemen,',
        :img => 'howitzer.jpg',
      },
      :railway => {
        :name => 'Railway Gun',
        :attributes => ['Artillery'],
        :desc => 'Railway guns are super heavy artillery. They function very similarly to a howitzer, but have more range, and are slower. They also deal even more damage vs structures.',
        :abilities => [ability(:setupArtillery), ability(:faceTarget)],
        :special_rules => [],
        :strong => 'Howitzer, Field Gun, Trench, Fortress',
        :weak => 'Riflemen',
        :img => 'rg.jpg',
      },
      :tank => {
        :name => 'Tank',
        :attributes => ['Armored'],
        :desc => 'Tanks are a relatively mobile unit with lots of health and armour. They are the only land unit that can withstand machine-gun fire, making them useful as front-line troops. Tanks are of limited effectivenes when on their own however, as they deal very little damage. They deal bonus damage to tanks, strucures, and ships.',
        :abilities => [],
        :special_rules => [],
        :strong => 'Machine Gun, Field Gun',
        :weak => 'Riflemen, Mortar, Fortress',
        :img => 'tank.jpg',
      },
      :balloon => {
        :name => 'Observation Balloon',
        :attributes => ['Flying'],
        :desc => 'Balloons are slow and cannot attack, but they can see very far. Use them to see over terrain and spot distant units. This is very useful when combined with the long range of artillery.',
        :abilities => [],
        :special_rules => [],
        :strong => '',
        :weak => 'Airplane, Riflemen, Machine Gun, Destroyer',
        :img => 'balloon.jpg',
      },
      :airplane => {
        :attributes => ['Flying'],
        :name => 'Airplane',
        :desc => "Airplanes can see almost as far as balloons, but are much faster and can shoot other air units. Since they don't have long range, they are often forced to fly over enemy lines to attack balloons. They are significantly improved by the upgrade 'synchronization gear'",
        :abilities => [],
        :special_rules => [],
        :strong => 'Observation Balloon',
        :weak => 'Riflemen, Machine Gun, Destroyer',
        :img => 'airplane.jpg',
      },
      :battleship => {
        :attributes => ['Naval,', 'Massive'],
        :name => 'Battleship',
        :desc => 'Battleships are a powerful warship with lots of life, and lots of armor. In addition, they have a powerful attack that deals splash damage to trenches and infantry. They deal bonus damage to tanks, structures, and ships.',
        :abilities => [ability(:pickUpMine)],
        :special_rules => [],
        :strong => 'Destroyer, Land units',
        :weak => 'Submarine, Mine',
        :img => 'battleship.jpg',
      },
      :destroyer => {
        :name => 'Destroyer',
        :attributes => ['Naval'],
        :desc => 'Destroyers are fast warships with lots of armour. They can shoot air units, and scan their surroundings for submarines or mines. Destroyers are not very effective individually, but generally serve as support for battleships.',
        :abilities => [ability(:scanTheDepths), ability(:pickUpMine)],
        :special_rules => [],
        :strong => 'Submarine, Mine',
        :weak => 'Battleship, Fortress',
        :img => 'destroyer.jpg',
      },
      :submarine => {
        :name => 'Submarine',
        :attributes => ['Naval'],
        :desc => 'Submarines are slow, fragile warships with a powerful attack. They can submerge under water, making them invisible unless spotted by an enemy destroyer or port. Submarines deal bonus damage to battleships.',
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

  def self.STRUCTURES
    return {
      :trench => {
        :name => 'Trench',
        :desc => 'The trench provides shelter for a single infantry unit. Units inside can still attack, and are protected from most types of damage until the trench is destroyed. They are still vulnerable to three types of damage however: bayonet (from riflemen), high explosives (from mortars, howitzers, and battleships), and gas (from howitzer). Enemy units are significantly slowed when walking over trenches. Infantry units can get in enemy trenches if they are empty, capturing it for themselves.',
        :img => 'trench.jpg',
      },
      :barracks => {
        :name => 'Barracks',
        :desc => 'The barracks can train infantry units; workers, riflemen, machines guns, and mortars.',
        :img => 'barracks.jpg',
      },
      :factory => {
        :name => 'Factory',
        :desc => 'The factory can train three types of artillery; field guns, howitzers, and railway guns, as well as tanks, airplanes, and observation balloons. Both tanks and railway guns must be researched before they can be built.',
        :img => 'factory.jpg',
      },
      :railroad => {
        :name => 'Railroad',
        :desc => 'Railroads provide a movement speed bonus to nearby allied units, as long as they are out of combat. This bonus is especially important for slow units such as howitzers and railway guns.',
        :img => 'railroad.jpg',
      },
      :research => {
        :name => 'Research Center',
        :desc => 'The research center is where you get all your upgrades. Upgrades are quite varied in what benefits they provide, refer to individual tooltips for specifics. One upgrade, "Lessons of War", can only be researched in 1915, and unlocks several other upgrades.',
        :img => 'research.jpg',
      },
      :hospital => {
        :name => 'Hospital',
        :desc => 'The hospital can heal up to six nearby infantry units at once. Units must be out of combat to be healed.',
        :img => 'hospital.jpg',
      },
      :machine => {
        :name => 'Machine Shop',
        :desc => 'The machine shop can repair up to three nearby factory units at once. Units must be out of combat to be healed.',
        :img => 'machine.jpg',
      },
      :fortress => {
        :name => 'Fortress',
        :desc => 'The fortress is a versatile defense structure, with more range than infantry, but less range than artillery. They are most effective vs units with lots of armour, such as tanks and ships.',
        :img => 'fortress.jpg',
      },
      :town => {
        :name => 'Town',
        :desc => 'Towns are small settlements that provide 15 income per month when at full population. Towns can build workers when above 20% life.',
        :img => 'town.jpg',
      },
      :port => {
        :name => 'Port',
        :desc => 'Ports are small coastal settlements that provide 15 income per month when at full population. Ports can build and repair naval units when above 20% life. Ships can be repaired two at a time, and must be out of combat.',
        :img => 'port.jpg',
      },
      :city => {
        :name => 'City',
        :desc => 'Cities are settlements that provide 30 income per month when at full population. Cities can build workers and spawn militia when above 20% population.',
        :img => 'city.jpg',
      },
      :capitol => {
        :name => 'Capitol',
        :desc => 'Cities are large settlements that provide 60 income per month when at full population. Capitols can build workers and spawn militia when above 20% population.',
        :img => 'capitol.jpg',
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
        :desc => 'Builds a trench, which can hold a single occupant. A unit inside a trench is protected against most types of damage, and can still attack.'
      },

      :setupMG => {
        :name => 'Setup Machine Gun',
        :desc => "Enables a rapid-fire weapon, but renders it immobile. The machine gun is setup automatically when inside a trench.",
      },

      :setupArtillery => {
        :name => 'Setup Artillery',
        :desc => "Enables a long-range weapon, but renders it immobile. Once setup, can only shoot towards the side it's facing.",
      },

      :faceTarget => {
        :name => 'Face Target',
        :desc => "Rotates towards the target location. Use to ensure it's facing the right way before setting up",
      },

      :loadGasAttack => {
        :name => 'Load Gas Attack',
        :desc => 'Loads a a gas shell into the howitzer, which will be fired with the next shot. Gas spreads over an area, damaging infantry units, and dealing bonus damage to those inside trenches.',
      },

      :submerge => {
        :name => 'Submerge',
        :desc => 'Dives beneath the sea, becoming invisible to enemies. Can be spotted by enemy ports and destroyers.',
      },

      :scanTheDepths => {
        :name => 'Scan the Depths',
        :desc => 'Searches for nearby invisible units. Temporarily grants the ability to detect submarines and mines, at the cost of movement speed.',
      },

      :pickUpMine => {
        :name => 'Carry Mines',
        :desc => 'Can pick up and drop off mines.',
      },

      :callToArms => {
        :name => 'Call to Arms',
        :desc => 'Summon an instant militia army with timed life, at the cost of population.',
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
        :name => "Germany",
        :team => "Central Powers",
        :income => "750",
        :desc => "Germany is the most powerful nation in the game, with the most income, and also the largest starting army. Unfortunately, it is also sandwiched between two large opponents, France and Russia. it's large size, plus it's precarious position, make Germany the most important nation in the game."
      },
      :austria => {
        :name => "Austria-Hungary",
        :team => "Central Powers",
        :income => "600",
        :desc => "Austria is a major nation that is surrounded by three enemies, Russia, Italy, and Serbia. Russia is the most dangerous, but is often occupied by your allies. Italy is small, but only has one front to focus on, and is the main threat. Serbia is not very dangerous, as it is very small, and usually occupied with Bulgaria from the start."
      },
      :britain => {
        :name => "Britain",
        :team => "Entente",
        :income => "420",
        :desc => "Britain is in a unique position, with two starting areas, the British Isles and Egypt. Britain has more coastlines than any other nation, and also starts with the largest starting navy. Your main concern as Britain is fighting the Ottomans, but helping France fight Germany is a viable option as well. The British Isles are not often attacked directly, but when it happens it can be devestating, and should be guarded against.",
        :special => "Periodically recieves a transport full of riflemen from Canada. Transports arrive from the west, drop off their cargo at the nearest British city, then return to the west. Empty transports that return to the west are refunded. An exception to this is that the first two transports do not return automatically."
      },
      :france=> {
        :name => "France",
        :team => "Entente",
        :income => "600",
        :desc => "France is a major nation that only has one front, Germany. As a result, your strategy as France really depends on what Germany does. If Germany is focusing on you, play defensive. If Germany is focusing on Russia (or anywhere else), play more agressive."
      },
      :italy=> {
        :name => "Italy",
        :team => "Entente",
        :income => "285",
        :desc => "Italy is similar to France, in that it has a single front with a larger opponent. As such, your strategy is dependant on what Austria does. The main difference is that Italy is also very coastal, which can pose a problem if the Ottomans come to dominate the sea."
      },
      :russia=> {
        :name => "Russia",
        :team => "Entente",
        :income => "720",
        :desc => "Russia is the largest of the Entente nations, and in the unique position of having borders with all four members of the Central Powers. Russia is also the largest nation, with large distances between its cities. While Russia has railroads to help traverse the large distances, invading enemies do not. This makes Russia especially hard to invade, as it can easily fall back to establish new lines when overrun.",
        :special => "In March 1917 (about 40 minutes into the game), the Russian Revolution occurs, and lasts until the end of 1918. During this time, neutral armies of riflemen and militia spawn randomly, and try to take over the country. These armies can appear anywhere in Russia, and attack anything they see. They even appear in areas that are no longer controlled by Russia."
      },
      :serbia => {
        :name => "Serbia",
        :team => "Entente",
        :income => "150",
        :desc => "Serbia is the weakest nation in the game, and is in the unfortunate position of being stuck between Austria and Bulgaria. If only Bulgaria attacks, Serbia has a chance of holding on, or even winning. If Austria attacks however, Serbia is likely doomed, and should focus on delaying the enemy.",
        :special => "If Serbia is defeated or surrenders, the player takes control of Portugal instead. Portugal is even smaller than Serbia, and is removed from the usual fronts. In order to  get back into the fight, Portugal must either attack through neutral Spain and then fight in France/Italy, or bypass Spain with transports."
      },
      :bulgaria => {
        :name => "Bulgaria",
        :team => "Central Powers",
        :income => "225",
        :desc => "Bulgaria is the smallest nation on the Central Powers, and has borders with both Serbia and Russia. Serbia is the most natural opponent, and in this fight Bulgaria has the advantage. Technically, neutral Romania lies between Bulgaria and Russia, and this often discourages fighting between the two nations. However, Serbia is often defeated before too long, and once this happens Bulgaria can turn its attention on Russia."
      },
      :ottomans => {
        :name => "The Ottoman Empire",
        :team => "Central Powers",
        :income => "600",
        :desc => "The Ottoman Empire is a major nation with two small fronts, one with Russia, and one with british Egypt. The Ottomans are very coastal, and war with the British often involves significant naval action. On land, narrow fronts mean that it's relatively easy to defend the infantry rush, and artillery become especially useful.",
        :special => "Capitol city is Istanbul, which is located beside a bridge crossing the Bosphorus strait. Whoever controls Istanbul also gets control of the bridge, and it can be used by anyone on their team. To use the bridge, select some units and right click on it."
      },
    }
  end

  def self.nation(nation)
    return self.NATIONS[nation]
  end

  def self.unit(unit)
    return self.UNITS[unit]
  end

  def self.ability(ability)
    return self.ABILITIES[ability]
  end

  def self.rule(rule)
    return self.RULES[rule]
  end
end