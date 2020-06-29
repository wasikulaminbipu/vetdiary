import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  "Vet Diary",
                  style: Theme.of(context).primaryTextTheme.headline6,
                ),
                subtitle: Text("for the Veterinarians..."),
              ),
              ListTile(
                leading: Icon(Icons.import_export),
                title: Text("Import Data"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.backup),
                title: Text("Export Data"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.gamepad),
                title: Text("About"),
                onTap: () {},
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text("Copyright"),
                    Icon(Icons.copyright),
                    Text("ATech Developers")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
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
                            onClick: () {},
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

class ItemCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onClick;

  const ItemCard({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onClick,
      child: Container(
        margin: EdgeInsets.all(7.0),
        height: MediaQuery.of(context).size.height * 1 / 5.5,
        width: MediaQuery.of(context).size.width * 1 / 3.5,
        decoration: BoxDecoration(
            color: Colors.white,
//                              border: Border.all(),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 6,
                  offset: Offset(1, 3))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Icon
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(50.0)),
                child: Icon(
                  this.icon,
                  size: 40.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            //Title
            Container(
              child: Text(
                this.title,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
