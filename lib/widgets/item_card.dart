import 'package:flutter/material.dart';

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
