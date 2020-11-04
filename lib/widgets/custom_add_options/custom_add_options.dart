import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vetdiary/widgets/custom_add_options/custom_add_options_model.dart';
import 'package:vetdiary/widgets/selection_dialogue/selection_dialogue.dart';

class CustomAddOptions extends StatelessWidget {
  final List<String> options;
  final Function(List<String>) onChanged;
  final bool multiSelect;

  const CustomAddOptions(
      {Key key,
      @required this.options,
      @required this.onChanged,
      this.multiSelect = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CustomAddOptionModel>(
      create: (context) => CustomAddOptionModel(),
      builder: (context, child) {
        var _state = Provider.of<CustomAddOptionModel>(context, listen: false);
        //Container for Returning the body of the page
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
                                multiSelect: this.multiSelect,
                                title: "Add Pathogen",
                                option: this.options,
                                selected: _state.options,
                                onSubmitted: (data) {
                                  _state.addMultipleOption(data);
                                  onChanged(data);
                                },
                              );
                            },
                            useSafeArea: true);
                      }),
                ],
              ),
              Consumer<CustomAddOptionModel>(builder: (context, value, child) {
                return Container(
                  child: Wrap(
                    children: value.options
                        .map((String option) => Container(
                              padding: EdgeInsets.all(5.0),
                              child: CustomOption(
                                text: option,
                                icon: Icons.done,
                              ),
                            ))
                        .toList(),
                  ),
                );
              }),
            ],
          ),
        );
      },
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
