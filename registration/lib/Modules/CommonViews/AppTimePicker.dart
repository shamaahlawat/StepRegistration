import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class AppTimePicker extends StatelessWidget {
  final Function timeDidSelected;
  AppTimePicker({Key key, this.timeDidSelected}) : super(key: key);

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
            this.timeDidSelected(
                _selectedTime ?? Duration(hours: 0, minutes: 0));
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
