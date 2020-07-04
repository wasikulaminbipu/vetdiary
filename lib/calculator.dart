import 'package:flutter/material.dart';
import 'package:vetdiary/widgets/custom_input_row.dart';
import 'package:vetdiary/widgets/navigation_drawer.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text("Calculator"),
          leading: Builder(builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          bottom: TabBar(
            labelColor: Colors.black,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "Dosage Calculator",
              ),
              Tab(
                text: "Fluid Rate Calculator",
              ),
              Tab(
                text: "Gestation Calculator",
              ),
              Tab(
                text: "Transfusion Calculator",
              ),
              Tab(
                text: "Age Calculator",
              ),
              Tab(
                text: "Body Surface Area Calculator",
              ),
              Tab(
                text: "Energy Requirement Calculator",
              ),
            ],
          ),
        ),
        drawer: NavigationDrawer(),
        body: Container(
          child: SafeArea(
            child: TabBarView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: ListView(
                    children: <Widget>[
                      CustomInputRow(
                        lookup: (){},
                        title: "Dosage: ",
                        options: ["mg/L", "DDD"],
                        onChanged: (value){},
                      ),
                    ],
                  ),
                ),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
