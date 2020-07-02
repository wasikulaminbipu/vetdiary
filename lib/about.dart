import 'package:flutter/material.dart';
import 'package:vetdiary/widgets/navigation_drawer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              //Top Portion appbar, Title & Search Bar
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //Navigation Bar
                    Builder(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              child: FlatButton(
                                child: Icon(Icons.menu),
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                              ),
                            ),
                            Container(
                              width: 50.0,
                              child: FlatButton(
                                child: Icon(Icons.notifications),
                                onPressed: () {},
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    //Title
                    ListTile(
                      title: Center(
                        child: Text(
                          "Vet Diary",
                          style: Theme.of(context).primaryTextTheme.headline6,
                        ),
                      ),
                      subtitle: Center(child: Text("for the Veterinarians...")),
                    ),
                  ],
                ),
              ),
              //Menu List Here
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height * 2 / 3,
                  child: ListView(
                    children: <Widget>[
                      Text.rich(TextSpan(
                          text: "App Version: ",
                          children: [TextSpan(text: "0.0.1 Alpha", style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal
                          ))],
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                          )),
                          Text.rich(TextSpan(
                          text: "Developer: ",
                          children: [TextSpan(text: "ATech Developers", style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal
                          ))],
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                          )),
                          Text.rich(TextSpan(
                          text: "License: ",
                          children: [TextSpan(text: "Open Source(MIT)", style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal
                          ))],
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                          )),
                          Text.rich(TextSpan(
                          text: "Repository Link: ",
                          children: [TextSpan(text: "http://github.com/wasikulaminbipu/vetdiary", style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal
                          ))],
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                          )),
                          Text.rich(TextSpan(
                          text: "Website: ",
                          children: [TextSpan(text: "Under Development", style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal
                          ))],
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
