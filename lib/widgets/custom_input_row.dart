import 'package:flutter/material.dart';

class CustomInputRow extends StatefulWidget {
  final String title;
  final Function lookup;
  final List<String> options;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;

  const CustomInputRow({
    Key key,
    @required this.title,
    this.lookup,
    this.options,
    this.keyboardType,
    @required this.onChanged,
  }) : super(key: key);

  @override
  _CustomInputRowState createState() => _CustomInputRowState();
}

class _CustomInputRowState extends State<CustomInputRow> {
  String dropdownItem;

  @override
  Widget build(BuildContext context) {
    this.dropdownItem = this.dropdownItem ?? this.widget.options[0];
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 5,
            child: FittedBox(
              fit: BoxFit.cover,
                // width: MediaQuery.of(context).size.width * 7 / 20,
                child: Text(this.widget.title, style: Theme.of(context).primaryTextTheme.headline4,)),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: TextField(
              keyboardType: this.widget.keyboardType,
              onChanged: this.widget.onChanged,
              decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 0.0)),
              style: Theme.of(context).primaryTextTheme.headline4,
            ),
          ),
          if( this.widget.options != null ) SizedBox(width: 5.0,),
          if (this.widget.options != null && this.widget.options.length!= 0) Flexible(
                flex: 3,
                fit: FlexFit.loose,
                  // width: MediaQuery.of(context).size.width * 6 / 20,
                  child: Container(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                        ),
                        height: 50.0,
                        child: DropdownButton(
                          value: this.dropdownItem,
                          items: List<DropdownMenuItem>.from(this.widget.options.map((String e) => DropdownMenuItem(child: Text(e), value: e,))),
                          onChanged: (data) {
                            this.setState(() { this.dropdownItem = data.toString(); });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                if (this.widget.lookup!=null) SizedBox(width: 5.0,) ,
          if (this.widget.lookup != null) Flexible(
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
