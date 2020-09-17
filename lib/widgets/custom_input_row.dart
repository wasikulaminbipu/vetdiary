import 'package:flutter/material.dart';
import 'package:vetdiary/model/calculator_result.dart';

class CustomInputRow extends StatelessWidget {
  final String title;
  final Function lookup;
  final List<String> options;
  final TextInputType keyboardType;
  final ValueChanged<UnitWithValue> onChanged;
  final UnitWithValue data;

  const CustomInputRow({
    Key key,
    @required this.title,
    this.lookup,
    this.options,
    this.keyboardType,
    @required this.onChanged,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //===========Title==============
          //Title of The Custom Input Box
          //Showing the title with styling
          Flexible(
            flex: 5,
            child: FittedBox(
                fit: BoxFit.cover,
                // width: MediaQuery.of(context).size.width * 7 / 20,
                child: Text(
                  this.title,
                  style: Theme.of(context).primaryTextTheme.headline4,
                )),
          ),

          //===========Value Input Row===============
          //TextField to Get Input Data
          //Here the Value will be get from users input
          //Assigning the value to the value portion
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: TextField(
              keyboardType: this.keyboardType,
              onChanged: (value) {
                //Assign the value with value portion and call for the parent onChanged Function

                this.onChanged(this.data.copyWith(value: value));
              },
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 7.0, vertical: 0.0)),
              style: Theme.of(context).primaryTextTheme.headline4,
            ),
          ),

          //=================DropDown Options=================
          //Check If Drowpdown option exists
          //Show the SizedBox on Condition for padding
          if (this.options != null)
            SizedBox(
              width: 5.0,
            ),
          //Check If dropdown option exists
          //Show Dropdown Button
          if (this.options != null && this.options.length != 0)
            Flexible(
              flex: 3,
              fit: FlexFit.loose,
              // width: MediaQuery.of(context).size.width * 6 / 20,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  height: 50.0,
                  child: DropdownButton(
                    value: this.data.getUnit,
                    items: List<DropdownMenuItem>.from(
                        this.options.map((String e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ))),
                    onChanged: (value) {
                      //Assign the Dropdown data
                      //Set State and call for parent onChanged

                      this.onChanged(
                          this.data.copyWith(unit: value.toString()));
                    },
                  ),
                ),
              ),
            ),
          if (this.lookup != null)
            SizedBox(
              width: 5.0,
            ),
          if (this.lookup != null)
            Flexible(
              flex: 2,
              // width: MediaQuery.of(context).size.width * 3 / 20,
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  elevation: 5.0,
                  color: Theme.of(context).buttonColor,
                  child: Icon(Icons.import_export),
                  onPressed: () {},
                ),
              ),
            ),
        ],
      ),
    );
  }
}
