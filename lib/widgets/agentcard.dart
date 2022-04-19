// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quiz_app/models/agent.dart';

class AgentCard extends StatelessWidget {
  final List<Agent> agents;
  const AgentCard({
    Key? key,
    required this.agents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: agents.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text(agents[index].name),
              content: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...agents[index]
                          .abilities
                          .map(
                            (e) => ListTile(
                              title: Text(e.keys.toString()),
                              subtitle: Text(e.values.toString()),
                            ),
                          )
                          .toList()
                    ]),
              ),
            ),
          );
        },
        child: Card(
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
      ),
    );
  }
}
