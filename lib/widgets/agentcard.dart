import 'package:flutter/material.dart';
import 'package:quiz_app/models/agent.dart';

class AgentCard extends StatefulWidget {
  final Agent agent;

  const AgentCard({Key? key, required this.agent}) : super(key: key);

  @override
  State<AgentCard> createState() => _AgentCardState();
}

class _AgentCardState extends State<AgentCard> {
  void _makeFave(Agent agent) {
    setState(() {
      agent.isFave = !agent.isFave;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.agent.image),
          radius: 30,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.agent.name),
            widget.agent.isFave
                ? IconButton(
                    onPressed: () => _makeFave(widget.agent),
                    icon: const Icon(Icons.star, color: Colors.amber))
                : IconButton(
                    onPressed: () => _makeFave(widget.agent),
                    icon: const Icon(Icons.star_outline))
          ],
        ),
        subtitle: Text(widget.agent.printrole()),
      ),
    );
  }
}
