import 'package:flutter/material.dart';
import 'package:registration/Modules/CommonViews/ProgressBar.dart';
import 'package:registration/Modules/CommonViews/StepTitle.dart';
import 'package:registration/Modules/Password/Widgets/PasswordTextField.dart';
import 'package:registration/Modules/Welcome/Widgets/NextButton.dart';

class Password extends StatelessWidget {
  const Password({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 150,
          margin: EdgeInsets.only(
            top: 120,
            left: 20,
            right: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ProgresBar(
                currentIndex: 1,
              ),
              SizedBox(
                height: 50,
              ),
              StepTitle(
                title: "Create Password",
                subTitle: "Password will be used to login to account",
              ),
              PasswordTextField(),
              Spacer(),
              NextButton(
                height: 100,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
