import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetdiary/widgets/selection_dialogue/cubit/selection_dialogue_cubit.dart';

class SelectionDialogue extends StatelessWidget {
  final String title;
  final List<String> option;

  SelectionDialogue({@required this.title, @required this.option});

  @override
  Widget build(BuildContext context) {
    final SelectionDialogueCubit _bloc = SelectionDialogueCubit(this.option);
    // String search = "";

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
                      Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(Icons.select_all),
                          onPressed: () {
                            _bloc.selectAll();
                          },
                        ),
                      )
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
                      _bloc.searchOption(data);
                    },
                  ),
                ),
                //-------------------------Options Container-----------
                //This container is for option
                BlocBuilder<SelectionDialogueCubit, SelectionDialogueState>(
                    cubit: _bloc,
                    builder: (context, state) {
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
                                  _bloc.selectOption(title);
                                },
                              ),
                            );
                          },
                          // children: [
                          //   Container(
                          //     margin: EdgeInsets.symmetric(
                          //         horizontal: 5.0, vertical: 0),
                          //     decoration: BoxDecoration(
                          //         color: Theme.of(context)
                          //             .accentColor
                          //             .withOpacity(0.8)),
                          //     child: ListTile(
                          //       leading: Icon(
                          //         Icons.done,
                          //         color: Colors.white,
                          //         size: 30.0,
                          //       ),
                          //       title: Text(
                          //         "Option",
                          //         style: Theme.of(context)
                          //             .textTheme
                          //             .bodyText1
                          //             .copyWith(
                          //               fontSize: 20.0,
                          //             ),
                          //       ),
                          //     ),
                          //   ),
                          // ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
