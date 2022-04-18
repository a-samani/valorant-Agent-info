// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quiz_app/models/agent.dart';

class AgentCard extends StatelessWidget {
  // final String name;
  // final String role;
  // final String info;
  // final String image;
  // const AgentCard(
  //     {Key? key,
  //     required this.name,
  //     required this.role,
  //     required this.info,
  //     required this.image})
  //     : super(key: key);
  final List<Agent> agents;
  const AgentCard({
    Key? key,
    required this.agents,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: agents.length,
      itemBuilder: (context, index) => Card(
        margin: const EdgeInsets.all(10),
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(agents[index].image),
            radius: 30,
          ),
          title: Text(agents[index].name),
          subtitle: Text(agents[index].printrole()),
        ),
      ),
    );
  }
}
