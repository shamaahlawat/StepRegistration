import 'package:flutter/material.dart';

class ComplexityView extends StatelessWidget {
  ComplexityView({Key key}) : super(key: key);

  final verificationTypes = [
    VerificationType.lower,
    VerificationType.upper,
    VerificationType.number,
    VerificationType.charector
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              child: _createTypes(context: context, veryfied: false)),
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
                      child: veryfied
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.green,
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
