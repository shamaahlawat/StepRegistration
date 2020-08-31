import 'package:flutter/material.dart';
import 'package:registration/Modules/CommonViews/ProgressBar.dart';
import 'package:registration/Modules/Password/Password.dart';
import 'package:registration/Modules/Welcome/Widgets/Bloc/LoginBloc.dart';
import 'package:registration/Modules/Welcome/Widgets/EmailTextField.dart';
import 'package:registration/Modules/Welcome/Widgets/NextButton.dart';
import 'package:registration/Modules/Welcome/Widgets/WelcomeTitle.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _emailCntroller = TextEditingController();
  final _bloc = LoginBloc();
  bool isEmailValidated = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
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
                    EmailTextField(
                      controller: _emailCntroller,
                      bloc: _bloc,
                      errorMessage:
                          snapshot.hasData ? this._getError(snapshot) : '',
                    ),
                    NextButton(
                      onPressed: isEmailValidated ? this._nextPressed : null,
                      backgroundColor: Colors.grey[100],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  _nextPressed(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Password()));
  }

  _getError(snapshot) {
    print(snapshot.data);
    final error = snapshot.data[LoginEvent.emailValidation] ?? '';
    this.isEmailValidated =
        error == '' && this._emailCntroller.text.length > 0 ? true : false;
    return error;
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}
