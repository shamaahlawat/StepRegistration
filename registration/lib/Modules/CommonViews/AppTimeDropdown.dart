import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class AppTimeDropdown extends StatelessWidget {
  final Function selectedTime;
  AppTimeDropdown({Key key, this.selectedTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Duration _selectedTime;
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          child: Platform.isIOS
              ? CupertinoTimerPicker(
                  mode: CupertinoTimerPickerMode.hm,
                  onTimerDurationChanged: (Duration time) {
                    _selectedTime = time;
                    print(_selectedTime);
                  },
                )
              : Container(),
        ),
        FlatButton(
          color: Colors.blue,
          child: Text("Done"),
          onPressed: () {
            this.selectedTime(_selectedTime);
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
