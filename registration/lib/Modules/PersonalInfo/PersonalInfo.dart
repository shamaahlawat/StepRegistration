import 'package:flutter/material.dart';
import 'package:registration/Modules/CommonViews/AppDropdown.dart';
import 'package:registration/Modules/CommonViews/ProgressBar.dart';
import 'package:registration/Modules/CommonViews/StepTitle.dart';
import 'package:registration/Modules/Meeting/MeetingInfo.dart';
import 'package:registration/Modules/Welcome/Widgets/NextButton.dart';

class PersonalInfo extends StatelessWidget {
  PersonalInfo({Key key}) : super(key: key);

  final List<DropdownMenuItem> goalData = [
    DropdownMenuItem(
      child: Text("- Choose option -"),
      value: 1,
    ),
    DropdownMenuItem(
      child: Text("option one"),
      value: 2,
    ),
    DropdownMenuItem(
      child: Text("option Two"),
      value: 3,
    )
  ];

  final List<DropdownMenuItem> incomeData = [
    DropdownMenuItem(
      child: Text("- Choose option -"),
      value: 1,
    ),
    DropdownMenuItem(
      child: Text("income one"),
      value: 2,
    ),
    DropdownMenuItem(
      child: Text("income Two"),
      value: 3,
    )
  ];

  final List<DropdownMenuItem> expenceData = [
    DropdownMenuItem(
      child: Text("- Choose option -"),
      value: 1,
    ),
    DropdownMenuItem(
      child: Text("expence one"),
      value: 2,
    ),
    DropdownMenuItem(
      child: Text("expence Two"),
      value: 3,
    )
  ];

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
                currentIndex: 2,
              ),
              SizedBox(
                height: 50,
              ),
              StepTitle(
                title: "Personal Information",
                subTitle:
                    "Please fill the information below and your goal for digital saving.",
              ),
              SizedBox(
                height: 50,
              ),
              AppDropdown(
                hintText: "Goal for activation",
                data: goalData,
              ),
              SizedBox(
                height: 30,
              ),
              AppDropdown(
                hintText: "Monthly Incomme",
                data: incomeData,
              ),
              SizedBox(
                height: 30,
              ),
              AppDropdown(
                hintText: "Monthly expense",
                data: expenceData,
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
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MeetingInfo()));
  }
}
