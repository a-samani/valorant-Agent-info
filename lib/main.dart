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
            'Omen is a flanker who is able to get behind enemy lines with teleports and strike from sneaky angles',
        image: 'assets/images/omen.png'),
    Agent(
        name: 'Brimstone',
        role: Roles.Controller,
        info:
            'Brimstone is a tactical commando with versatile abilities that involve using the minimap.',
        image: 'assets/images/brim.jpg'),
    Agent(
        name: 'Viper',
        role: Roles.Controller,
        info:
            'Viper wields toxic gases that run off of a refillable reserve. She can emit poison from a grenade or create a line wall with the vapors.',
        image: 'assets/images/viper.jpg'),
    Agent(
        name: 'Astra',
        role: Roles.Controller,
        info:
            'Astra debuted as one of the most unique agents in Valorant due to her abilities that you can place anywhere on the map.',
        image: 'assets/images/astra.jpg'),
    Agent(
        name: 'Breach',
        role: Roles.Initiators,
        info:
            'Breach is designed to be an initiator who excels at playing through walls and opponents that are positioned to hold chokepoints.',
        image: 'assets/images/breach.jpg'),
    Agent(
        name: 'Chamber',
        role: Roles.Sentinel,
        info:
            'Chamber functions as a sentinel but is by far the most aggressive when compared to his counterparts. His Rendezvous (teleport) ability allows him to peek risky angles and find opening picks for his team, much of the time if he teleports in a timely manner he can escape unpunished.',
        image: 'assets/images/chamber.png'),
    Agent(
        name: 'Cypher',
        role: Roles.Sentinel,
        info:
            'Cypher is a spy who\'s a master of gathering information through his camera and trip wires.',
        image: 'assets/images/cypher.jpg'),
    Agent(
        name: 'Jett',
        role: Roles.Duelist,
        info:
            'Jett is the most mobile agent in Valorant, making her an ideal duelist, especially when she gets her knife ultimate.',
        image: 'assets/images/jett.jpg'),
    Agent(
        name: 'KAY/O',
        role: Roles.Initiators,
        info:
            'KAY/O is a valuable asset to any team due to his “Suppression” capabilities that prevent enemy agents from using their abilities',
        image: 'assets/images/kayo.jpg'),
    Agent(
        name: 'Killjoy',
        role: Roles.Sentinel,
        info:
            'Killjoy is a German genius who uses an arsenal of turrets, mines, and traps.',
        image: 'assets/images/kj.jpg'),
    Agent(
        name: 'Neon',
        role: Roles.Duelist,
        info:
            'Neon can traverse any map rapidly with her sprint and thrives at catching enemies off-guard by repositioning herself quickly. Additionally, her slide allows her to engage in a manner that makes her very hard to track and gun down.',
        image: 'assets/images/neon.jpg'),
    Agent(
        name: 'Phoenix',
        role: Roles.Duelist,
        info:
            'Phoenix is a pyromancer with an explosive playstyle, utilizing fire to control the flow of battle. He can use them to create walls, as flashbangs around corners, and of course, as an AoE molotov.',
        image: 'assets/images/pho.jpg'),
    Agent(
        name: 'Raze',
        role: Roles.Duelist,
        info:
            'Raze is the de facto explosives expert of Valorant with some of the most kill potential in the game.',
        image: 'assets/images/raze.jpg'),
    Agent(
        name: 'Reyna',
        role: Roles.Duelist,
        info: 'Reyna is a vampire whose abilities are fueled by kills.',
        image: 'assets/images/reyna.jpg'),
    Agent(
        name: 'Sage',
        role: Roles.Sentinel,
        info:
            'Sage is currently the only “healer” in Valorant with a defensively-oriented kit, with a healing orb she can use on herself or an ally.',
        image: 'assets/images/sage.jpg'),
    Agent(
        name: 'Skye',
        role: Roles.Initiators,
        info:
            'An initiator who can provide a lot of information to her team through her animals. Her dog can clear out spaces and concuss opponents if found; it functions similarly to Sova\'s Owl Drone when it comes to clearing space.',
        image: 'assets/images/skye.jpg'),
    Agent(
        name: 'Sova',
        role: Roles.Initiators,
        info:
            'Sova is a master archer who is able to bounce his arrows to scout enemies or kill them around corners. He also has a handy owl drown that can be used to mark where an enemy is.',
        image: 'assets/images/sova.jpg'),
    Agent(
        name: 'Yoru',
        role: Roles.Duelist,
        info:
            'Yoru is a tricky duelist that is built to lurk, acting as the worst nightmare to potential flankers. His kit allows him to deceive enemies and bait out utility by faking site executions on the attacker side.',
        image: 'assets/images/yoru.jpg'),
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
