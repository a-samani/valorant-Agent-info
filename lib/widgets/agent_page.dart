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
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                widget.agent.image,
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i < widget.agent.abilities.length; i++)
                buildBox(
                    child: GestureDetector(
                  child: Text(widget.agent.abilities[i].keys.toString().substring(1,widget.agent.abilities[i].keys.toString().length-1)), //removing the 'c' from abilities
                  onTap: () {
                    int shownTextLength =
                        widget.agent.abilities[i].values.toString().length - 1;
                    setState(() {
                      shownText =
                          widget.agent.abilities[i].values.toString().substring( //removing the 'c' from descriptions
                                1,shownTextLength
                              );
                    });
                  },
                ))
            ],
          ),
          Text(shownText),
        ],
      ),
    );
  }

  buildBox({required Widget child}) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade200,
        ),
        padding: EdgeInsets.all(8),
        child: child,
      ),
    );
  }
}
