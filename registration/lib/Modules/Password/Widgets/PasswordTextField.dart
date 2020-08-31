import 'package:flutter/material.dart';
import 'package:registration/Modules/Password/Widgets/ComplexityView.dart';
import 'package:registration/Utils/Constants.dart';

class PasswordTextField extends StatelessWidget {
  final Function passwordDidChange;
  const PasswordTextField({Key key, this.passwordDidChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, top: 100),
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(7)),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.remove_red_eye),
            border: InputBorder.none,
            hintText: "Create Password"),
        onChanged: (password) => _validatePassword(password),
      ),
    );
  }

  _validatePassword(String password) {
    bool hasUppercase = password.contains(upperCaseRejex);
    bool hasDigits = password.contains(numberRejex);
    bool hasLowercase = password.contains(lowerCaseRejex);
    bool hasSpecialCharacters = password.contains(specialcharectorRejex);
    bool reacheMax = password.length > minChar;
    final status = {
      VerificationType.lower: hasLowercase,
      VerificationType.upper: hasUppercase,
      VerificationType.number: hasDigits,
      VerificationType.charector: reacheMax
    };
    this.passwordDidChange(status);
  }
}
