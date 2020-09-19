import 'package:flutter/material.dart';

class CausalAgentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
              background: Image.asset('images/causal_agent.png'),
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
