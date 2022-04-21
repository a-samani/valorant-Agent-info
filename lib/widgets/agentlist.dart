import 'package:flutter/material.dart';
import 'package:quiz_app/models/agent.dart';
import 'package:quiz_app/widgets/agentcard.dart';

class AgentList extends StatelessWidget {
  final List<Agent> agents;
  const AgentList({Key? key, required this.agents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child:  GestureDetector(
        onTap: (){
          print("Container clicked");
        },
        child: ListView.builder(
        itemCount: agents.length,
        itemBuilder: (context, index) => AgentCard(
          agent: agents[index],
        ),
    ),
      
      ),
    );
  }
}
