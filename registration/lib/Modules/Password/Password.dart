import 'package:flutter/material.dart';
import 'package:registration/Modules/CommonViews/ProgressBar.dart';
import 'package:registration/Modules/CommonViews/StepTitle.dart';
import 'package:registration/Modules/Password/Bloc/PasswordBloc.dart';
import 'package:registration/Modules/Password/Widgets/ComplexityView.dart';
import 'package:registration/Modules/Password/Widgets/PasswordTextField.dart';
import 'package:registration/Modules/PersonalInfo/PersonalInfo.dart';
import 'package:registration/Modules/Welcome/Widgets/NextButton.dart';

class Password extends StatefulWidget {
  const Password({Key key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _bloc = PasswordBloc();
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Create Account"),
              backgroundColor: Colors.blueAccent,
            ),
            backgroundColor: Colors.blueAccent,
            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 250,
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ProgresBar(
                      currentIndex: 1,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    StepTitle(
                      title: "Create Password",
                      subTitle: "Password will be used to login to account",
                    ),
                    PasswordTextField(
                      passwordDidChange: this._passwordDidChange,
                      bloc: this._bloc,
                      controller: this._controller,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ComplexityView(
                      status:
                          snapshot.hasData ? snapshot.data : PasswordStatus(),
                    ),
                    Spacer(),
                    NextButton(
                      height: 100,
                      onPressed: this._controller.text.length > 0
                          ? this._nextPressed
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  _nextPressed(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PersonalInfo()));
  }

  _passwordDidChange(status) {
    print(status);
  }

  @override
  void dispose() {
    this._bloc.dispose();
    super.dispose();
  }
}
