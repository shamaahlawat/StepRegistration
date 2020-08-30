import 'package:flutter/material.dart';
import 'package:registration/Modules/CommonViews/ProgressBar.dart';
import 'package:registration/Modules/Password/Password.dart';
import 'package:registration/Modules/Welcome/Widgets/EmailTextField.dart';
import 'package:registration/Modules/Welcome/Widgets/NextButton.dart';
import 'package:registration/Modules/Welcome/Widgets/WelcomeTitle.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 120,
            left: 20,
          ),
          child: Column(
            children: <Widget>[
              ProgresBar(
                currentIndex: 0,
              ),
              WelcomeTitle(),
              WelcomeSubtitle(),
              EmailTextField(),
              NextButton(
                onPressed: this._nextPressed,
              )
            ],
          ),
        ),
      ),
    );
  }

  _nextPressed(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Password()));
  }
}
