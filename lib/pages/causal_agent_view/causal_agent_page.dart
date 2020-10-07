import 'package:flutter/material.dart';
import 'package:vetdiary/pages/causal_agent_add/add_causal_agent_page.dart';

class CausalAgentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddCausalAgent()));
        },
        child: Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Causal Agent"),
              centerTitle: true,
              background: Image.asset('assets/images/causal_agent.png'),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(_buildList())),
        ],
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgets = [];

    widgets = List.generate(
        50,
        (index) => ListTile(
              title: Text("Agent $index"),
              subtitle: Text("Type: Virus"),
              leading: CircleAvatar(
                child: Text("T"),
              ),
            ));

    return widgets;
  }
}
