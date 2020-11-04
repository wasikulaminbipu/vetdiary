import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vetdiary/widgets/selection_dialogue/selection_dialogue_model.dart';

class SelectionDialogue extends StatelessWidget {
  final String title;
  final List<String> option;
  final List<String> selected;
  final Function(List<String>) onSubmitted;
  final bool multiSelect;

  SelectionDialogue({
    @required this.title,
    @required this.option,
    @required this.onSubmitted,
    this.selected = const [],
    this.multiSelect = false,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SelectionDialogueModel>(
      create: (context) => SelectionDialogueModel(this.option,
          multiSelect: this.multiSelect, selected: this.selected),
      builder: (context, child) {
        final _state =
            Provider.of<SelectionDialogueModel>(context, listen: false);
        return Container(
          child: FractionallySizedBox(
            widthFactor: 0.85,
            heightFactor: 0.6,
            child: Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //----------------Heading-----------
                    //Creates title bar and decorate it
                    Container(
                      padding: EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        // boxShadow:
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          //Create the title
                          Text(
                            this.title,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          //------Icon Bar For the Header Icon
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Icon For Selection of all
                              this.multiSelect
                                  ? Container(
                                      alignment: Alignment.center,
                                      child: IconButton(
                                        icon: Icon(Icons.select_all),
                                        onPressed: () {
                                          _state.selectAll();
                                        },
                                      ),
                                    )
                                  : Container(),
                              //Icon for done option
                              Container(
                                alignment: Alignment.center,
                                child: IconButton(
                                  icon: Icon(Icons.done),
                                  onPressed: () {
                                    //Send all the data back to the previous widget
                                    this.onSubmitted(_state.selected);
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //-----------Search Bar-------------
                    //Create & Design a search bar
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Search or Add New Value..",
                          suffixIcon: Icon(Icons.search),
                        ),
                        onChanged: (data) {
                          _state.searchOption(data);
                        },
                      ),
                    ),
                    //-------------------------Options Container-----------
                    //This container is for options
                    Consumer<SelectionDialogueModel>(
                        builder: (context, state, child) {
                      //This container contains option
                      return Container(
                        height: MediaQuery.of(context).size.height / 2.8,
                        // height: 200.0,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.options.length,
                          itemBuilder: (context, index) {
                            String title = state.options[index];

                            return AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOutCubic,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 0),
                              decoration: state.isSelected(title)
                                  ? BoxDecoration(
                                      color: Theme.of(context)
                                          .accentColor
                                          .withOpacity(0.8))
                                  : BoxDecoration(),
                              child: ListTile(
                                leading: state.isSelected(title)
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.white,
                                        size: 30.0,
                                      )
                                    : Container(
                                        height: 0,
                                        width: 0,
                                      ),
                                title: Text(
                                  state.options[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                        fontSize: 20.0,
                                      ),
                                ),
                                onTap: () {
                                  _state.selectOption(title);
                                },
                              ),
                            );
                          },
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
