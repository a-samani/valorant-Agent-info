import 'package:flutter/material.dart';
import 'package:quiz_app/models/agent.dart';

class AgentPage extends StatefulWidget {
  final Agent agent;

  const AgentPage({Key? key, required this.agent}) : super(key: key);

  @override
  State<AgentPage> createState() => _AgentPageState();
}

class _AgentPageState extends State<AgentPage> {
  String shownText = "";

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.agent.name),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  widget.agent.image,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name : ${widget.agent.name}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Role : ${widget.agent.printrole()}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          const Divider(color: Colors.black),
          Row(
            children: <Widget>[
              for (int i = 0; i < widget.agent.abilities.length; i++)
                Card(
                  child: GestureDetector(
                    child: Text(widget.agent.abilities[i].keys
                        .toString()
                        .substring(
                            1,
                            widget.agent.abilities[i].keys.toString().length -
                                1)), //removing the 'c' from abilities
                    onTap: () {
                      int shownTextLength =
                          widget.agent.abilities[i].values.toString().length -
                              1;
                      setState(() {
                        shownText = widget.agent.abilities[i].values
                            .toString()
                            .substring(
                                //removing the 'c' from descriptions
                                1,
                                shownTextLength);
                      });
                    },
                  ),
                )
            ],
          ),
          Text(shownText),
        ],
      ),
    );
  }
}
