// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quiz_app/models/agent.dart';

class AgentCard extends StatefulWidget {
  final List<Agent> agents;
  const AgentCard({
    Key? key,
    required this.agents,
  }) : super(key: key);

  @override
  State<AgentCard> createState() => _AgentCardState();
}

class _AgentCardState extends State<AgentCard> {
  void _makefave(index) {
    setState(() {
      widget.agents[index].makeFave();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.agents.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text(widget.agents[index].name),
              content: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...widget.agents[index].abilities
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
              backgroundImage: AssetImage(widget.agents[index].image),
              radius: 30,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.agents[index].name),
                widget.agents[index].isFave
                    ? IconButton(
                        onPressed: () {
                          _makefave(index);
                        },
                        icon: const Icon(Icons.star, color: Colors.amber))
                    : IconButton(
                        onPressed: () {
                          _makefave(index);
                        },
                        icon: const Icon(Icons.star_outline))
              ],
            ),
            subtitle: Text(widget.agents[index].printrole()),
          ),
        ),
      ),
    );
  }
}
