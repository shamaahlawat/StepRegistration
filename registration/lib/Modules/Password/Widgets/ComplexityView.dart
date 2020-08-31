import 'package:flutter/material.dart';
import 'package:registration/Modules/Password/Bloc/PasswordBloc.dart';

class ComplexityView extends StatelessWidget {
  final PasswordStatus status;
  ComplexityView({Key key, this.status}) : super(key: key);

  final verificationTypes = [
    VerificationType.lower,
    VerificationType.upper,
    VerificationType.number,
    VerificationType.charector
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Complexity: ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                this.status.getStatusString(),
                style: TextStyle(color: Colors.yellow[800]),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  child: _createTypes(context: context, veryfied: false)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _createTypes({BuildContext context, bool veryfied}) {
    return Row(
        children: verificationTypes
            .map(
              (type) => Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: _verificationStatus(type)
                          ? Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              type.getType(),
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(type.getTitle(),
                        style: TextStyle(fontSize: 12, color: Colors.white))
                  ],
                ),
              ),
            )
            .toList());
  }

  _verificationStatus(VerificationType type) {
    switch (type) {
      case VerificationType.lower:
        return this.status.hasLowercase;
      case VerificationType.upper:
        return this.status.hasUppercase;

      case VerificationType.number:
        return this.status.hasDigits;

      case VerificationType.charector:
        return this.status.hasMax;

      default:
    }
  }
}

enum VerificationType { lower, upper, number, charector }

extension VerificationTypeExt on VerificationType {
  String getType() {
    switch (this) {
      case VerificationType.lower:
        return "a";
      case VerificationType.upper:
        return "A";
      case VerificationType.number:
        return "123";
      case VerificationType.charector:
        return "9+";
    }
  }

  String getTitle() {
    switch (this) {
      case VerificationType.lower:
        return "Lowercase";
      case VerificationType.upper:
        return "Uppercase";
      case VerificationType.number:
        return "Numbers";
      case VerificationType.charector:
        return "Charectors";
    }
  }
}
