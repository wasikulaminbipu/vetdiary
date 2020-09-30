import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetdiary/model/utility.dart';
import 'package:vetdiary/widgets/visual_options/bloc/visual_options_bloc.dart';
import 'package:vetdiary/widgets/visual_options/option_button.dart';

class VisualOptions extends StatefulWidget {
  final List<TitleWithIcon> contents;
  final bool multiSelect;
  final VoidCallback onChange;
  final double radius;
  final double width;
  final double height;

  VisualOptions({
    @required this.contents,
    this.multiSelect = false,
    @required this.onChange,
    this.width,
    this.height = 100.0,
    this.radius,
  });

  @override
  _VisualOptionsState createState() => _VisualOptionsState();
}

class _VisualOptionsState extends State<VisualOptions> {
  List<TitleWithIcon> contents;
  // List<TitleWithIcon> _selected = [];

  @override
  void initState() {
    this.contents = this.widget.contents;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VisualOptionsBloc>(
        create: (context) => VisualOptionsBloc(),
        child: Container(
          height: this.widget.height,
          child: BlocBuilder<VisualOptionsBloc, VisualOptionsState>(
            builder: (context, state) {
              print("rebuild");
              return Wrap(
                  alignment: WrapAlignment.center,
                  children: this.contents.map((e) {
                    // print(_checkIfSelected(e));
                    return OptionButton(
                      onPressed: () {
                        //tracker to the selected vatiable
                        BlocProvider.of<VisualOptionsBloc>(context).add(
                            UpdateVisualOption(
                                option: e,
                                multiSelect: this.widget.multiSelect));
                      },
                      data: e,
                      width: this.widget.width,
                      radius: this.widget.radius,
                      isSelected: state.isSelected(e),
                    );
                  }).toList());
            },
          ),
          // child: ListView.builder(
          //   shrinkWrap: true,
          //   scrollDirection: Axis.horizontal,
          //   itemCount: this.widget.contents.length,
          //   itemBuilder: (context, index) {
          //     TitleWithIcon e = this.widget.contents[index];
          //     return OptionButton(
          //       onPressed: () {
          //         _swapSelect(e);
          //         //tracker to the selected vatiable
          //         print(this._selected.toString());
          //       },
          //       title: e.title,
          //       icon: e.icon,
          //       selected: _checkIfSelected(e),
          //       width: this.widget.width,
          //       radius: this.widget.radius,
          //     );
          //   },
          // ),
        ));
  }

  // //To get the value if the button is selected
  // bool _checkIfSelected(TitleWithIcon data) {
  //   return this._selected.contains(data);
  // }
}
