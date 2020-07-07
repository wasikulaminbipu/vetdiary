import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetdiary/bloc/calculator_bloc/calculator_bloc.dart';
import 'package:vetdiary/widgets/item_card.dart';
import 'package:vetdiary/widgets/navigation_drawer.dart';
import 'package:vetdiary/calculator.dart';

class Dashboard extends StatelessWidget {
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
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Vet Diary",
                        style: Theme.of(context).primaryTextTheme.headline6,
                      ),
                    ),
                    //Search Bar
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 4,
                                spreadRadius: 4,
                                offset: Offset(0, 2))
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Menu List Here
              Expanded(
                flex: 2,
                child: Container(
                  height: MediaQuery.of(context).size.height * 2 / 3,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        verticalDirection: VerticalDirection.down,
                        alignment: WrapAlignment.center,
                        children: <Widget>[
                          ItemCard(
                            title: "Prescriptions",
                            icon: Icons.filter_vintage,
                            onClick: () {},
                          ),
                          ItemCard(
                            title: "Drug Lists",
                            icon: Icons.view_list,
                            onClick: () {},
                          ),
                          ItemCard(
                            title: "Medicine",
                            icon: Icons.surround_sound,
                            onClick: () {},
                          ),
                          ItemCard(
                            title: "Pharmacology",
                            icon: Icons.track_changes,
                            onClick: () {},
                          ),
                          ItemCard(
                            title: "Pathology",
                            icon: Icons.usb,
                            onClick: () {},
                          ),
                          ItemCard(
                            title: "Microbiology",
                            icon: Icons.bug_report,
                            onClick: () {},
                          ),
                          ItemCard(
                            title: "Physiology",
                            icon: Icons.verified_user,
                            onClick: () {},
                          ),
                          ItemCard(
                            title: "Husbendry",
                            icon: Icons.widgets,
                            onClick: () {},
                          ),
                          ItemCard(
                            title: "Calculator",
                            icon: Icons.view_comfy,
                            onClick: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Calculator()));
                            },
                          ),
                        ],
                      ),
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
