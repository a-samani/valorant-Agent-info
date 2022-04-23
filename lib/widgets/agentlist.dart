import 'package:flutter/material.dart';
import 'package:quiz_app/models/agent.dart';
import 'package:quiz_app/widgets/agent_page.dart';
import 'package:quiz_app/widgets/agentcard.dart';

class AgentList extends StatelessWidget {
  final List<Agent> agents;
  const AgentList({Key? key, required this.agents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: agents.length,
        itemBuilder: (context, index) => GestureDetector(child: AgentCard(
          agent: agents[index],
        ),
        onTap: () {
          Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AgentPage(agent: agents[index],))
        );
        },) 
      ),
    );
  }
}
