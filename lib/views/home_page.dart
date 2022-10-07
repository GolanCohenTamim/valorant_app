// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:valoran_app/models/agents.api.dart';
import 'package:valoran_app/models/agents.dart';
import 'package:valoran_app/views/widgets/agents.cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Agent> _agents;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    getAgents();
  }

  Future<void> getAgents() async {
    _agents = await AgentApi.getAgent();
    setState(() {
      isLoading = false;
    });
    print('the list$_agents');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _agents.length,
                itemBuilder: (context, index) {
                  return AgentCard(
                    title: _agents[index].title.toString(),
                    role: _agents[index].role.toString(),
                    roleIcon: _agents[index].roleIcon.toString(),
                    thumbnailUrl: _agents[index].agentImage.toString(),
                    abilityIcon1: _agents[index].ability1.toString(),
                    abilityIcon2: _agents[index].ability2.toString(),
                    abilityIcon3: _agents[index].ability3.toString(),
                    abilityIcon4: _agents[index].ability4.toString(),
                    abilityVideo1: _agents[index].abilityVideo1.toString(),
                    abilityVideo2: _agents[index].abilityVideo2.toString(),
                    abilityVideo3: _agents[index].abilityVideo3.toString(),
                    abilityVideo4: _agents[index].abilityVideo4.toString(),
                  );
                },
              ));
  }
}
