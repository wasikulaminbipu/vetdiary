import 'package:flutter/material.dart';

import '../about.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutPage()));
              },
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
    );
  }
}
