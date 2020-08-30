import 'package:flutter/material.dart';
import 'package:registration/Modules/CommonViews/ProgressBar.dart';
import 'package:registration/Modules/CommonViews/StepTitle.dart';
import 'package:registration/Modules/Welcome/Widgets/NextButton.dart';

class MeetingInfo extends StatelessWidget {
  const MeetingInfo({Key key}) : super(key: key);

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
              Row(
                children: <Widget>[
                  Text(
                    "Complexity: ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Very Week",
                    style: TextStyle(color: Colors.yellow[800]),
                  ),
                ],
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
}
