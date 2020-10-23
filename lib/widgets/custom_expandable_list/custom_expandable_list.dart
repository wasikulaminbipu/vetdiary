import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetdiary/widgets/custom_expandable_list/cubit/custom_expandable_list_cubit.dart';

class CustomExpandableList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = CustomExpandableListCubit();

    return Container(
        padding: EdgeInsets.all(5.0),
        // height: 200.0,
        child:
            BlocBuilder<CustomExpandableListCubit, CustomExpandableListState>(
          cubit: cubit,
          builder: (context, state) {
            return ExpansionPanelList(
              expandedHeaderPadding: EdgeInsets.all(0.0),
              animationDuration: Duration(milliseconds: 500),
              elevation: 4,
              expansionCallback: (index, isExpanded) {
                cubit.swapExpandedIndexTo(index);
              },
              children: [
                //Single Expansion Panel for the Characteristics
                ExpansionPanel(
                    isExpanded: state.isExpanded(0),
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return Container(
                        child: ListTile(
                          // contentPadding: EdgeInsets.all(0),
                          title: Text(
                            "Title of the Panel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          //Button to add new item
                          trailing: AnimatedOpacity(
                            opacity: isExpanded ? 1.0 : 0,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceInOut,
                            child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  size: 25.0,
                                ),
                                onPressed: () {}),
                          ),
                        ),
                      );
                    },
                    body: Container(
                      padding: EdgeInsets.all(5.0),
                      // height: 300.0,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Text("ABCD"),
                          Text("ABCD"),
                          Text("ABCD"),
                          Text("ABCD"),
                          Text("ABCD"),
                        ],
                      ),
                    )),
                ExpansionPanel(
                    isExpanded: state.isExpanded(1),
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        title: Text("Title of the Panel"),
                      );
                    },
                    body: Container(
                      padding: EdgeInsets.all(5.0),
                      // height: 300.0,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Text("ABCD"),
                          Text("ABCD"),
                          Text("ABCD"),
                          Text("ABCD"),
                          Text("ABCD"),
                        ],
                      ),
                    )),
              ],
            );
          },
        ));
  }
}
