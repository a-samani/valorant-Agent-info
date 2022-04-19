import 'package:flutter/material.dart';
import 'package:quiz_app/models/agent.dart';
import 'package:quiz_app/widgets/agentcard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valorant +',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<Agent> _agents = [
    Agent(
        name: 'Omen',
        role: Roles.Controller,
        info:
            'Omen is a flanker who is a,ble to get behind enemy lines with teleports and strike from sneaky angles',
        image: 'assets/images/omen.png',
        abilities: [
          {
            'Shrouded Step':
                'A short ranged teleport that works similarly to Reaper\'s E in Overwatch. Useful for getting onto high ground, across hallways, and into windows.'
          },
          {
            'Paranoia':
                'Fires a projectile that can go through walls and reduces the vision of ALL agents that it passes through.'
          },
          {
            'Dark Cover': 'A smoke grenade that can be fired through walls.',
            'From the Shadows ':
                'Open up a map and click on it to teleport to that location (can be anywhere on the map).'
          },
          {
            'tips':
                '''1. Use your smokes to cover areas you want to move around. Since Omen's smoke recharges over time so you will get them back during the round
2. You can use your teleport ability to cross windows or hallways that the enemy might be holding so you can appear from the other side.
3. You can also use your smokes to setup your ability teleport or ultimate teleport so that you are covered while teleporting.'''
          }
        ]),
    Agent(
        name: 'Brimstone',
        role: Roles.Controller,
        info:
            'Brimstone is a tactical commando with versatile abilities that involve using the minimap.',
        image: 'assets/images/brim.jpg',
        abilities: [
          {
            'Stim Beacon':
                '''Equips and tosses a beacon that emits an AoE buff within its radius called “RapidFire”.
    10% increased rate of fire.
    10% faster reload.
    10% faster weapon swap.
    10% recoil spread recovery.
'''
          },
          {
            'Incendiary':
                'Equips a grenade launcher that effectively fires a molotov, leaving flames that deal AoE damage to any agent that is in it.',
          },
          {
            'Sky Smoke':
                'Opens up a tactical map that allows Brimstone to launch up to three smoke grenades from the sky. The smoke grenades are very opaque and hard to see through (compared to other smokes like Omen\'s which are hollow)',
          },
          {
            'Orbital Strike ':
                'Opens up a tactical map (with a larger area than Sky Smoke\'s) that allows Brimstone to fire a massive laser airstrike after a short delay.',
          },
          {
            'tips':
                '''1. Brimstone's Sky Smoke ability is one of the most versatile abilities in the game. You can use it to block out sniping lanes, feint that you're attacking the otherside of the map, use it to help your team rush, and more, the possibilities are endless.

However, the potential strength of the ability really lies with coordinating and communicating with your team. When possible, be sure to let your teammates know when and where you plan to smoke, or be prepared to support their plays when they ask for it.

2. Due to the amount of raw firepower that RapidFire brings, you can often use it as a deterrent when enemies are advancing by placing it in their path behind a corner.

It will force your enemies to think twice before advancing and that could buy your team some time while they wait for the buff to subside. If they decide to advance, you'll have the advantage and may be able to hold off multiple enemies depending on your positioning.

3. Although it can definitely be used in other situations, Orbital Strikes is one of the best ultimates for playing around spike plants and defusals.

On offense, you can wait until you hear the sound cue that your enemies are defusing it before launching a blast. Since the ultimate lasts a few seconds, even if you don't kill your enemies, it can waste enough time for them not to be able to defuse it.

The same principle applies when you're defending and you hear your opponents planting. It's one of the few ultimates in the game that can get the best of Viper's deadly pit.'''
          }
        ]),
    Agent(
        name: 'Viper',
        role: Roles.Controller,
        info:
            'Viper wields toxic gases that run off of a refillable reserve. She can emit poison from a grenade or create a line wall with the vapors.',
        image: 'assets/images/viper.jpg',
        abilities: [
          {
            'Snakebite':
                'A projectile canister that explodes when it hits the ground (it can bounce off walls).'
          },
          {
            'Poison Cloud':
                'Throws a grenade that will emit toxic gas after you reactivate the ability to turn it on. It will emit gas until you turn it off or until you run out of your toxic fuel.'
          },
          {
            'Toxic Screen':
                'Fires a line of toxic gas emitters that can be fired a very far range. Similar to Poison Cloud, this effect can be turned on and off.'
          },
          {
            'Viper\'s Pit':
                'After choosing a spot on the ground near her, Viper creates a huge cloud of toxic gas that effectively acts like a room or building since you cannot see through Viper\'s Pit at all.'
          },
          {
            'tips':
                '''1. Viper's Pit, along with her other abilities, makes her one of the best spike planters in the game. If you want to main her, you should expect and be prepared to carry it often when you have ult or you're close to getting it with kills.

2. Since knowing when agents have ultimates is transparent to both sides, keep a close eye on agents like Brimstone, Phoenix, and Breach.

If you have your ultimate, they may save theirs to counteract your pit after casting it so keep that in mind.

Brimstone launches a powerful AoE nuke in an area about the size of your pit, Breach can engage on you with his Rolling Thunder, and Phoenix can ult from outside of your pit where you can't see him and engage twice with his resurrection.

 3. Take some time to practice and get familiarized with the different rates of fuel usage between using Q or E and both of them at the same time.

By building up this game sense, you'll be able to understand your timing windows more precisely.'''
          }
        ]),
    Agent(
        name: 'Astra',
        role: Roles.Controller,
        info:
            'Astra debuted as one of the most unique agents in Valorant due to her abilities that you can place anywhere on the map.',
        image: 'assets/images/astra.jpg',
        abilities: [
          {
            'Gravity Well':
                'Gravity Well creates a blackhole-like effect that pulls all players toward its center.After a delay, it will burst, granting the Vulnerable debuff (receive 2x damage) to agents inside it. This is the same debuff you are also experiencing when getting in contact with Viper\'s Snake Bite.',
          },
          {
            'Nova Pulse':
                ' Nova Pulse, stuns all agents inside it after a brief delay. This can make it a great combination with Gravity Well as you can create your own wombo combo on your own.'
          },
          {
            'Nebula':
                'As a controller, it\'s natural that Astra would have smokes since the class is expected to help facilitate the battlefield from a macro perspective.'
          },
          {
            'Astral Form/Cosmic Divide':
                'Astra uses her ultimate button to see the map from her Astral Form and fly around to place her abilities.Outside of that, she also had an ultimate, Cosmic Divide, which costs 7 orb points.'
          },
        ]),
    Agent(
        name: 'Breach',
        role: Roles.Initiators,
        info:
            'Breach is designed to be an initiator who excels at playing through walls and opponents that are positioned to hold chokepoints.',
        image: 'assets/images/breach.jpg',
        abilities: [
          {
            'Aftershock':
                'Fires an explosive that blasts out the other side of a wall after a short delay, dealing AoE damage to all agents within its explosion. The closer they are, the more damage they\'ll take.'
          },
          {
            'Flashpoint':
                'Fires a charge that works similarly to Aftershock, but instead of a damaging explosion, it\'s a flashbang that blinds all agents within its zone.'
          },
          {
            'Fault Line':
                'An ability that you must equip and charge before firing that creates an earthquake effect and disorients all agents within its effect.',
            'Rolling Thunder':
                'Fault Line\'s big brother, Rolling Thunder, launches a wider earthquake affect which disorients but also knocks up agents within its blast, leaving them vulnerable as sitting ( or flying?) ducks.'
          },
          {
            'tips':
                '''1. Be sure to coordinate and communicate with your team before using your abilities. If you aren't on the same page, it can be disastrous since you can CC your own allies, causing more harm than good.

2. Your abilities indicators on the minimap that will show where your abilities land. You'll also have yellow and red indicators to show whether or not you're in range.

Use these to build comfort so the map and its angles eventually becomes like the back of your hand.

3. Listen for sounds cues when defending against a spike plant or defusal. Breach is one of the few characters with abilities that can interrupt agents that are interacting with the spike.'''
          }
        ]),
    Agent(
        name: 'Chamber',
        role: Roles.Sentinel,
        info:
            'Chamber functions as a sentinel but is by far the most aggressive when compared to his counterparts. His Rendezvous (teleport) ability allows him to peek risky angles and find opening picks for his team, much of the time if he teleports in a timely manner he can escape unpunished.',
        image: 'assets/images/chamber.png',
        abilities: [
          {'': ''},
          {'': ''},
          {'': ''},
          {'': ''},
          {'tips': ''}
        ]),
    Agent(
        name: 'Cypher',
        role: Roles.Sentinel,
        info:
            'Cypher is a spy who\'s a master of gathering information through his camera and trip wires.',
        image: 'assets/images/cypher.jpg',
        abilities: [
          {
            'Trapwire':
                'Places a tripwire that tethers and reveals enemies that walk through it.'
          },
          {
            'Cyber Cage':
                'Places an invisible trap on the ground that Cypher can choose to trigger from anywhere as long as he\'s looking toward it (even works through walls).'
          },
          {
            'Spycam':
                'Throws an invisible spycam that you can switch to the POV of to watch areas.'
          },
          {
            'Neural Thef':
                'Cypher tosses his hat onto the corpse of an enemy that recently died to grant a brief reveal of where all remaining enemies are.'
          },
          {
            'tips':
                '''1. Your camera can be used like Sova's Owl, either to help your team scout an area before pushing or to bait the eyes of a peeker so your ally can shoot them while they're distracted.

2. Prep time is everything for Cypher. Know what you want to do ahead of time in terms of buying your weapons for a round and then quickly go to set up your traps.

3. Information is everything so be sure to communicate with your team in terms of where your traps and camera will be placed.

This will help your team collectively understand which areas are protected and which may be vulnerable blindspots.

4. Although Cypher's kit is more easily understood as a defender, he definitely has his uses on offense.

Use your tripwires and camera to cover flanks and rotations from enemies.

Save your smoke traps to cut off sniper sightlines or protect your spike planter.

Remember that Cypher is one of the few agents whose abilities do not have friendly fire.'''
          }
        ]),
    Agent(
        name: 'Jett',
        role: Roles.Duelist,
        info:
            'Jett is the most mobile agent in Valorant, making her an ideal duelist, especially when she gets her knife ultimate.',
        image: 'assets/images/jett.jpg',
        abilities: [
          {
            'Cloudburst':
                'A smoke grenade that doesn\'t last as long as others, but does the job. Similar to Phoenix\'s fire wall, you can curve it mid flight.'
          },
          {
            'Updraft':
                'A jump boost that seems simple at first but has more uses than you\'d think.'
          },
          {
            'Tailwind': 'A quick dash in the direction that Jett is moving.',
            'Blade Storm':
                'Draw kunai blades that have incredible accuracy. Left click throws a single knife while right click throws all at once.'
          },
          {
            'tips':
                '''1. You can surprise enemies by throwing a Cloudburst down, walking into it and then using Q and/or E. You can use this tactic with other smokes as well.

2. Pick your spots carefully. Just because you're mobile doesn't mean you should be using it recklessly. Be sure to still use fundamentals like using walking to limit your sound output before you strike.

3. Listen closely to enemy reloads, especially when fighting in close proximity around corners. If they step out to fire and retreat behind a wall to reload, you may have enough time to use your mobility to kill them before they can retaliate.'''
          }
        ]),
    Agent(
        name: 'KAY/O',
        role: Roles.Initiators,
        info:
            'KAY/O is a valuable asset to any team due to his “Suppression” capabilities that prevent enemy agents from using their abilities',
        image: 'assets/images/kayo.jpg',
        abilities: [
          {
            'FRAG/MENT': '''

FRAG/MENT is basically a grenade that deals damage multiple times in a radius. Once thrown,
the ability will stick to the floor wherever it lands and dish almost enough damage to take out an enemy each time it pulses.
'''
          },
          {
            'FLASH/DRIVE': '''

FLASH/DRIVE is a good old flashbang. This ability can bounce multiple times, but you'll more
than likely see it bounce once before going off. It's got a two second cook time, so it's great for flashing from far away. The alt fire for this ability shortens the cook time, making it ideal for unexpected peaks or for quick rushes.
'''
          },
          {
            'ZERO/POINT': '''

ZERO/POINT is KAY/O's signature ability, and it's where all the suppression starts. The ability
looks like a knife, and it has the game physics of one too. Once thrown, it will stick to a surface, wind up, and suppress any enemies caught in a circled area around it. It will also tell KAY/O and teammates what enemies are currently suppressed.
'''
          },
          {
            'NULL/CMD':
                '''NULL/CMD is essentially a power up for KAY/O. Once activated, KAY/O has an increased fire rate and emits suppression pulses in a large area around him, going through walls and any other map terrain to suppress enemies. If KAY/O is downed while in this ability, teammates have 15 seconds to come revive him.''',
          },
          {
            'tips': '''

While NULL/CMD provides a powerful fire rate buff for KAY/O, the only way to get full use of the ability is to use it with your team. KAY/O's pretty powerful, and his abilities set him up well for solo play, but he’ll need his teammates if he wants to be revived.

With the constant suppression pulses, NULL/CMD makes for a powerful way to get onto a site
as attackers. It can also be a good way to take back sites if you're on defense. No matter what
you do, make sure your team is there to trade kills and support you before charging in.
'''
          }
        ]),
    Agent(
        name: 'Killjoy',
        role: Roles.Sentinel,
        info:
            'Killjoy is a German genius who uses an arsenal of turrets, mines, and traps.',
        image: 'assets/images/kj.jpg',
        abilities: [
          {
            'Nanoswarm':
                'A grenade that turns invisible and is remotely detonated like Cypher\'s cages.'
          },
          {
            'Alarmbot':
                'Equips and deploys an invisible bot that acts like a proximity mine, jumping to an enemy that comes within its range and explodes.'
          },
          {
            'Turret':
                'Deploys a turret that fires on enemies within a 180 degree cone.'
          },
          {
            'Lockdown':
                'The source of this agent\'s name is most likely inspired by her ultimate, which places a device that emits a bubble dome in a large radius.'
          },
          {'tips': ''}
        ]),
    Agent(
        name: 'Neon',
        role: Roles.Duelist,
        info:
            'Neon can traverse any map rapidly with her sprint and thrives at catching enemies off-guard by repositioning herself quickly. Additionally, her slide allows her to engage in a manner that makes her very hard to track and gun down.',
        image: 'assets/images/neon.jpg',
        abilities: [
          {
            'High Gear':
                'Instantly channel Neon\'s power for increased speed. When charged, use Alt Fire to trigger an electric slide. Slide charge resets after two kils.'
          },
          {
            'Relay Bolt':
                'Instantly throw an energy bolt that bounces once. Upon hitting each surface, the bolt electrifies the ground below with a concussive blast.'
          },
          {
            'Fast Lane':
                'Fire two energy lines forward on the ground that extend a short distance or until they hit a surface. The lines rise into walls of static electricity that block vision and damage enemies passing through them.'
          },
          {
            'Overdrive':
                'Unleash Neon\'s full power and speed for a short duration. Fire to channel the power into deadly a lightning beam with high movement accuracy. The duration resets on each kill.'
          },
          {'tips': ''}
        ]),
    Agent(
        name: 'Phoenix',
        role: Roles.Duelist,
        info:
            'Phoenix is a pyromancer with an explosive playstyle, utilizing fire to control the flow of battle. He can use them to create walls, as flashbangs around corners, and of course, as an AoE molotov.',
        image: 'assets/images/pho.jpg',
        abilities: [
          {
            'Blaze':
                'A wall of fire that you can curve as it casts. It obscures vision, damages enemies that walk through/stand on it, and heals you if you\'re standing in it.'
          },
          {
            'Curveball':
                'A flashbang that you can quickly curve around corners.'
          },
          {
            'Hothands':
                'Effectively a molotov grenade that also heals you if you stand in its flames and deals AoE damage to enemies within it.'
          },
          {
            'Run it Back':
                'After casting at a location, you have a short amount of time where if you die, you will come back to life and return to where you cast it.'
          },
          {
            'tips':
                '''1. It depends on the context, but in some situations you may want to duck into a corner to use your abilities to heal yourself before an engagement. Ideally of course, you'd want to simultaneously heal while using them as utility.

2. Curveball is great for throwing into alleyways and behind walls, but don't forget that you can look upwards to curve it onto an enemy that's above you in a window or on a ledge.

You can also throw your Curveball through a Blaze wall to blind an opponent and avoid blinding yourself.

3. Run it Back is an incredible mix-up tool when used in combination with the teleporters on Bind. You can use it on one side, run through a teleporter and try to get kills at that site. If you're successful, you can just run through with your resurrected Phoenix and plant, or if it's heavily fortified, you can just take your death and plant on the side you resurrected on.'''
          }
        ]),
    Agent(
        name: 'Raze',
        role: Roles.Duelist,
        info:
            'Raze is the de facto explosives expert of Valorant with some of the most kill potential in the game.',
        image: 'assets/images/raze.jpg',
        abilities: [
          {
            'Boom Bot':
                'Equips and sets down a Boom Bot (a robot that looks like Roomba) which goes in a straight line and then bounces off walls it runs into.'
          },
          {
            'Blast Pack':
                'Throws a Blast Pack which will stick to a surface until you detonate it again or its timer runs out.'
          },
          {
            'Paint Shells':
                'Throws a grenade that detonates into smaller cluster explosions after a short delay.'
          },
          {
            'Showstopper':
                'Fires a rocket launcher that causes a massive explosion upon impact, dealing devastating damage to everything around it.'
          },
          {
            'tips':
                '''1. Although Raze's kit is focused on damage output, it does offer a solid amount of utility.

Boom Bot is a great tool for clearing out an alley or hallway before you enter, you can use it somewhat similarly to Sova's Owl or Cypher's camera.

Blast Pack is not only useful for helping her reach high ground, but it also interrupts spike plants and defusals due to its displacement effect.

2. Try to pair Raze with agents that have crowd control effects like Breach and Sage.

With the help of her bombs, she can easily decimate immobile enemies.

3. Blast Pack and Showstopper both have timers as soon as you activate them.

A good thing to keep in mind is that you can switch to other weapons and still use them before the timer runs out.

For example, you can throw a Blast Pack, switch to Paint Shells and throw that, then return back to your gun and then detonate the Blast Pack while your gun is out.

Likewise, you can pull out your rocket launcher, pull out your guns and other equipment, and then back to your rocket launcher in time to fire it before the timer runs out.'''
          }
        ]),
    Agent(
        name: 'Reyna',
        role: Roles.Duelist,
        info: 'Reyna is a vampire whose abilities are fueled by kills.',
        image: 'assets/images/reyna.jpg',
        abilities: [
          {
            'Leer':
                'Most of Reyna\'s abilities focus on empowering herself, however, the one ability that can help her team, Leer, is incredibly powerful and versatile.'
          },
          {
            'Devour':
                'Devour is one of the two abilities that use the Soul Orb mechanic, meaning that it cannot be cast until Reyna gets a kill (assists do not count).'
          },
          {
            'Dismiss': 'The other ability that requires Soul Orbs is Dismiss.',
            'Empress':
                'Reyna\'s ultimate, Empress, buffs her by increasing her firing rate, reload speed, and the speed of switching between guns and abilities.'
          },
          {
            'tips':
                '''1. When using Leer, be sure to communicate and coordinate with your team to get the most value out of it. Compared to other initiation abilities like Breach's Fault Line, it can be an even more effective engage tool since it doesn't negatively impact your allies.

2. You can make life harder on your enemies by casting Leer up into the air or far away from you as you peek. This will force them to split their gaze and increase the distance between trying to destroy the orb and then flicking to shoot you.

3. The big decision Reyna players constantly have to make is whether to use Devour or Dismiss. A good rule of thumb is to base it off of how much time you have. If you win a fight and have time to take cover and reset, choose Devour so you can heal back to full and return to the action. If you get a kill but it's a messy fight with enemies still around, it's probably better to use Dismiss so you can reposition.'''
          }
        ]),
    Agent(
        name: 'Sage',
        role: Roles.Sentinel,
        info:
            'Sage is currently the only “healer” in Valorant with a defensively-oriented kit, with a healing orb she can use on herself or an ally.',
        image: 'assets/images/sage.jpg',
        abilities: [
          {
            'Barrier Orb':
                'Creates a wall that can be destroyed but has a lot of health. You can change the angle of the wall to spin it how you\'d like.'
          },
          {
            'Slow Orb':
                'Throws an orb that explodes and spreads, slowing all agents that are within it.'
          },
          {
            'Heal Orb':
                'Heals an ally (left-click) or yourself (right-click) back over time back to full health, it is not a burst heal.',
            'Resurrection': 'Brings a dead ally back to life to full health.'
          },
          {
            'tips':
                '''1. Since your heal is a cooldown ability and not one you have to spend credits on, try to get as much value as you can out of it by healing your teammates after skirmishes when possible.

That being said, it does take some time to pull your gun back out after equipping a Healing Orb, so make sure that it's safe to do so before trying it.

2. Sage's Slow Orb is great for comboing with the abilities of your allies. Try it out with molotov effects like the ones that Phoenix and Viper have or with ultimates like Sovas or Brimstone's.

3. Unless you know that the enemy team will be pushing a particular side, avoid placing your Barrier Orb wall at the very beginning of a defensive round.

It has a timer before it dissipates, so if the enemy team is playing slow to look for picks or attacking a different site, it's a waste of 300 credits.

Another way to get value out of your wall is by using it to help secure ultimate orbs or to make it safer to resurrect an ally.'''
          }
        ]),
    Agent(
        name: 'Skye',
        role: Roles.Initiators,
        info:
            'An initiator who can provide a lot of information to her team through her animals. Her dog can clear out spaces and concuss opponents if found; it functions similarly to Sova\'s Owl Drone when it comes to clearing space.',
        image: 'assets/images/skye.jpg',
        abilities: [
          {
            'Regrowth':
                'EQUIP a healing trinket. HOLD FIRE to channel, healing allies in range and line of sight. Can be reused until her healing pool is depleted. Skye cannot heal herself.'
          },
          {
            'Trailblazer':
                'EQUIP a Tasmanian tiger trinket. FIRE to send out and take control of the predator. While in control, FIRE to leap forward, exploding in a concussive blast and damaging directly hit enemies',
          },
          {
            'Guiding Light':
                'EQUIP a hawk trinket. FIRE to send it forward. HOLD FIRE to guide the hawk in the direction of your crosshair. RE-USE while the hawk is in flight to transform it into a flash.',
          },
          {
            'Seekers':
                'EQUIP a Seeker trinket. FIRE to send out three Seekers to track down the three closest enemies. If a Seeker reaches its target, it nearsights them.',
          },
          {'tips': ''}
        ]),
    Agent(
        name: 'Sova',
        role: Roles.Initiators,
        info:
            'Sova is a master archer who is able to bounce his arrows to scout enemies or kill them around corners. He also has a handy owl drown that can be used to mark where an enemy is.',
        image: 'assets/images/sova.jpg',
        abilities: [
          {
            'Owl Drone':
                'Equip and fire an owl drone that you take POV control of. While flying the owl, you can fire a dart which temporarily reveals its target\'s location.'
          },
          {
            'Shock Bolt':
                'Equip and fire a lightning arrow that deals AoE splash damage. The closer an agent is to the blast, the more damage they will take.'
          },
          {
            'Recon Bolt':
                'Equip and fire a recon arrow that works similarly as the Shock Bolt in terms of firing the arrow (being able to pull for more distance or bounce up to two times).'
          },
          {
            'Hunter\'s Fury':
                'Fire up to three global arrows that pierce through terrain in a straight line.'
          },
          {
            'tips':
                '''1. Communication is key when using your owl. You can facilitate pushes and give your team the edge in scouting around corners and other places that enemies may be posted.

2. Just because your Recon Bolt doesn't reveal where an enemy is, doesn't mean that they aren't there. Good players will wait it out and then press forward or shoot it to fake that they're coming and rotate away.

3. On the flip side, you can also be creative in using your Recon arrow to fake that you're pushing as enemies may expect that you are scouting before your team pushes. As you can tell there are a ton of mind games involved when Sova's in a match.

4. Sova pairs well with other agents such as Sage as she can slow down enemies with her Slow Orb to set up for Hunter's Fury.'''
          }
        ]),
    Agent(
        name: 'Yoru',
        role: Roles.Duelist,
        info:
            'Yoru is a tricky duelist that is built to lurk, acting as the worst nightmare to potential flankers. His kit allows him to deceive enemies and bait out utility by faking site executions on the attacker side.',
        image: 'assets/images/yoru.jpg',
        abilities: [
          {
            'Bait':
                'Yoru\'s first ability, Bait, is able to simulate footsteps in a selected location and at all times. Although the sound of those footsteps are noticeably different from normal steps caused by another player, it definitely should cause a slight distraction for a moment.'
          },
          {
            'Stun':
                'Yoru\'s second ability, Stun, basically is a flash like Phoenix, Breach and Skye have in their ability set.'
          },
          {
            'Spatial Drift':
                'The Spatial Drift selects a mask that allows Yoru to look through the dimensions and move invisible from and invulnerable to everyone else.In plain language: You can move a certain amount of time completely invisible and invulnerable and also leave that state at any time.'
          },
          {
            'Uninvited Guest':
                'Yoru\'s Signature ability is Uninvited Guest which literally can make him a surprise factor in certain situations.'
          },
          {'tips': ''}
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Valorant +'),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.sort))],
        ),
        body: AgentCard(
          agents: _agents,
        ),
      ),
    );
  }
}
