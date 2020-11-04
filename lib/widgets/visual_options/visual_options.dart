import 'package:flutter/material.dart';
import 'package:vetdiary/model/utility.dart';
import 'package:vetdiary/widgets/visual_options/option_button.dart';

class VisualOptions extends StatelessWidget {
  final List<TitleWithIcon> contents;
  final List<TitleWithIcon> selected;
  final bool multiSelect;
  final Function(TitleWithIcon) onChange;
  final double radius;
  final double width;
  final double height;

  VisualOptions({
    @required this.contents,
    @required this.selected,
    @required this.onChange,
    this.multiSelect = false,
    this.height = 100.0,
    this.width,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            height: this.height,
            child: Wrap(
                alignment: WrapAlignment.center,
                children: this.contents.map((e) {
                  return OptionButton(
                    onPressed: () {
                      this.onChange(e);
                    },
                    data: e,
                    width: this.width,
                    radius: this.radius,
                    isSelected: this.selected.contains(e),
                  );
                }).toList()));
  }
}
