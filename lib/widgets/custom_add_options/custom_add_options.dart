import 'package:flutter/material.dart';
import 'package:vetdiary/widgets/selection_dialogue/selection_dialogue.dart';

class CustomAddOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Hosts",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 20.0),
              ),
              Spacer(),
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          return SelectionDialogue(
                            multiSelect: true,
                            title: "Add Pathogen",
                            option: <String>["ABCD", "CDEF", "alks", "JSHDK"],
                            onSubmitted: (data) {
                              print(data);
                            },
                          );
                        },
                        useSafeArea: true);
                  }),
            ],
          ),
          Container(
            child: Wrap(
              children: [
                CustomOption(
                  text: "Name",
                  icon: Icons.done,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomOption extends StatelessWidget {
  //Variables to get data
  final String text;
  final IconData icon;

  const CustomOption({Key key, @required this.text, @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [BoxShadow(blurRadius: 10.0, spreadRadius: 1.0)]),
      child: Wrap(
        alignment: WrapAlignment.end,
        children: [
          Icon(this.icon),
          SizedBox(
            width: 5.0,
          ),
          Text(
            this.text,
            style: Theme.of(context).accentTextTheme.headline6,
          ),
        ],
      ),
    );
  }
}
