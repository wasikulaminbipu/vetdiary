import 'package:flutter/material.dart';
import 'package:vetdiary/model/utility.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    Key key,
    @required this.onPressed,
    @required this.data,
    this.width,
    this.radius,
    this.isSelected = true,
  }) : super(key: key);

  final GestureTapCallback onPressed;
  final TitleWithIcon data;
  final double width;
  final double radius;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.bounceOut,
        width: this.width,
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: this.isSelected
                ? Theme.of(context).primaryColor
                : Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(this.radius ?? 10.0),
            boxShadow: [
              !this.isSelected
                  ? BoxShadow(
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                      color: Colors.grey,
                      offset: Offset(3, 3))
                  : BoxShadow()
            ]),
        //Face of the container
        child: Column(
          children: [
            Icon(
              this.data.icon,
              size: this.width != null ? this.width - 10 : 40,
            ),
            Text(
              data.title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
