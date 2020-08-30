import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:intl/intl.dart';

class AppDateDropdown extends StatelessWidget {
  final Function selectedDate;
  AppDateDropdown({Key key, this.selectedDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _selectedDate;
    return Column(
      children: <Widget>[
        Container(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime newDateTime) {
                DateFormat dateFormat = DateFormat("dd-MMM-yyyy");
                _selectedDate = dateFormat.format(newDateTime);
                print(_selectedDate);
              },
            )),
        FlatButton(
          color: Colors.blue,
          child: Text("Done".toString()),
          onPressed: () {
            this.selectedDate(_selectedDate);
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
