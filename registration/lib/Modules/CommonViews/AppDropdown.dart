import 'package:flutter/material.dart';

class AppDropdown extends StatefulWidget {
  final List<DropdownMenuItem> data;
  final String hintText;
  const AppDropdown({Key key, @required this.data, this.hintText = ''})
      : super(key: key);

  @override
  _AppDropdownState createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  int currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      child: Stack(
        children: <Widget>[
          Text(
            this.widget.hintText,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 4,
            ),
            alignment: Alignment.bottomLeft,
            child: DropdownButton(
              underline: Container(),
              icon: Container(),
              isExpanded: true,
              value: currentValue,
              items: this.widget.data,
              onChanged: (value) {
                this.setState(() {
                  currentValue = value;
                });
              },
            ),
          ),
          Positioned(
              top: 10,
              right: 0,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
