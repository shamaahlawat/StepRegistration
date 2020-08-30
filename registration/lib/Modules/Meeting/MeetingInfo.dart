import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:registration/Modules/CommonViews/AppDateDropdown.dart';
import 'package:registration/Modules/CommonViews/AppTimeDropdown.dart';
import 'package:registration/Modules/CommonViews/ProgressBar.dart';
import 'package:registration/Modules/CommonViews/StepTitle.dart';
import 'package:registration/Modules/PersonalInfo/Widgets/DateTimeButton.dart';
import 'package:registration/Modules/Welcome/Widgets/NextButton.dart';

class MeetingInfo extends StatefulWidget {
  const MeetingInfo({Key key}) : super(key: key);

  @override
  _MeetingInfoState createState() => _MeetingInfoState();
}

class _MeetingInfoState extends State<MeetingInfo> {
  String selectedDate;
  Duration sellectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 150,
          margin: EdgeInsets.only(top: 120, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ProgresBar(
                currentIndex: 3,
              ),
              SizedBox(
                height: 50,
              ),
              StepTitle(
                title: "Schedule Video Call",
                subTitle:
                    "Choose the date and time that you preffered. We will send a link by email to make a video call on the scheduled date and time",
              ),
              SizedBox(
                height: 30,
              ),
              DateTimeButton(
                hintText: "Date",
                value: selectedDate ?? "- Choose Date -",
                onPressed: this._showDatePicker,
              ),
              SizedBox(
                height: 30,
              ),
              DateTimeButton(
                hintText: "Time",
                value: this.sellectedTime.toString() ?? "- Choose Date -",
                onPressed: this._showTimePicker,
              ),
              SizedBox(
                height: 30,
              ),
              Spacer(),
              NextButton(
                height: 100,
                onPressed: this._nextPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _nextPressed(context) {
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => PersonalInfo()));
  }

  _showDatePicker(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Container(
                height: 270,
                width: 300,
                child: Column(
                  children: <Widget>[
                    Text("Date Picker"),
                    AppDateDropdown(
                      selectedDate: (_selectedDate) {
                        this.setState(() {
                          this.selectedDate = _selectedDate;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ));
  }

  _showTimePicker(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Container(
                height: 270,
                width: 300,
                child: Column(
                  children: <Widget>[
                    Text("Date Picker"),
                    AppTimeDropdown(
                      selectedTime: (_time) {
                        this.setState(() {
                          this.sellectedTime = _time;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ));
  }
}
