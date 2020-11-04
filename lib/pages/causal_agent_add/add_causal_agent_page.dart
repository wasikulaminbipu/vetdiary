import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vetdiary/model/utility.dart';
import 'package:vetdiary/pages/causal_agent_add/add_causal_agent_model.dart';
import 'package:vetdiary/widgets/custom_add_options/custom_add_options.dart';
import 'package:vetdiary/widgets/custom_expandable_list/custom_expandable_list.dart';
import 'package:vetdiary/widgets/multiple_option_button/multiple_option_button.dart';
import 'package:vetdiary/widgets/visual_options/visual_options.dart';

class AddCausalAgent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddCausalAgentModel>(
      create: (context) => AddCausalAgentModel(),
      lazy: true,
      builder: (context, child) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                actions: [
                  IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
                ],
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("Add Pathogen"),
                  centerTitle: true,
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate(_buildUIBody(context))),
            ],
          ),
        );
      },
    );
  }

  //Set the UI without appbar
  //UI for Sliver Body
  List<Widget> _buildUIBody(BuildContext context) {
    List<Widget> data = [];
    var _state = Provider.of<AddCausalAgentModel>(context, listen: false);

    //return the UI
    return [
      //--------------CHOICE LIST----------------------
      //create choice for type
      Container(
        child: Selector<AddCausalAgentModel, TitleWithIcon>(
          selector: (_, state) => state.type,
          builder: (context, type, child) {
            return VisualOptions(
              onChange: (option) {
                _state.selectType(option);
              },
              multiSelect: false,
              contents: [
                TitleWithIcon(title: "Virus", icon: Icons.bug_report),
                TitleWithIcon(title: "Bacteria", icon: Icons.bug_report),
                TitleWithIcon(title: "Protozoa", icon: Icons.bug_report),
                TitleWithIcon(title: "Helminth", icon: Icons.bug_report)
              ],
              selected: <TitleWithIcon>[type],
            );
          },
        ),
      ),
      //--------------------------------------------------------------
      //----------------------TextField For Scientific Name-----------
      //--------------------------------------------------------------
      Container(
        padding: const EdgeInsets.all(8.0),
        child: Selector<AddCausalAgentModel, String>(
          selector: (_, state) => state.title,
          builder: (context, title, child) {
            //TextField to get the title of the pathogen
            return TextFormField(
              initialValue: title,
              autovalidateMode: AutovalidateMode.always,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                labelText: "Scientific Name",
              ),
              validator: _validateScientificName,
              onChanged: (title) {
                _state.addTitle(title);
              },
            );
          },
        ),
      ),
      //--------------------------------------------------------------------
      //-------------------Gram Staining Selector---------------------------
      //--------------------------------------------------------------------
      Container(
        child: Selector<AddCausalAgentModel, String>(
          selector: (_, state) => state.nucleus,
          builder: (context, stain, child) {
            return MultipleOptionButton(
              title: "Gram Staining",
              options: ["+ (ve)", "- (ve)"],
              selected: [stain],
              onPressed: (String selected) {
                _state.selectGramStaining(selected);
              },
            );
          },
        ),
      ),
      //------------------------------------------------------------------
      //----------------------ADD HOSTS-----------------------------------
      //------------------------------------------------------------------
      CustomAddOptions(
          multiSelect: true,
          onChanged: (options) {
            _state.addHosts(options);
          },
          options: ["Cat", "Dog", "Rat"]),
      //------------------------------------------------------------------------
      //-------------------------------Expandable Lists-------------------------
      //------------------------------------------------------------------------
      Selector<AddCausalAgentModel, int>(
        selector: (_, state) => state.expandedIndex,
        builder: (context, expandedIndex, child) {
          return ExpansionPanelList(
              expandedHeaderPadding: EdgeInsets.all(0.0),
              animationDuration: Duration(milliseconds: 500),
              elevation: 4,
              expansionCallback: (index, isExpanded) {
                _state.swapExpanded(index);
              },
              children: [
                //Single Expansion Panel for the Characteristics
                ExpansionPanel(
                    isExpanded: expandedIndex == 0,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return Container(
                        child: ListTile(
                          // contentPadding: EdgeInsets.all(0),
                          title: Text(
                            "Characteristics",
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
              ],
            );
        },
      ),
    ];
  }

  String _validateScientificName(String dat) {
    if (dat.contains("")) return null;
    if (!dat.contains(" ") || dat.split(" ").length != 2)
      return "Invalid Scientific Name";
    else
      return null;
  }
}
