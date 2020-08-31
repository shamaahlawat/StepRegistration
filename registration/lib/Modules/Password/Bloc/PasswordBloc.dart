import 'dart:async';

import 'package:registration/Utils/Constants.dart';

class PasswordBloc {
  final _controller = StreamController.broadcast();
  Stream get stream => _controller.stream;

  validatePassword(String password) {
    bool hasUppercase = password.contains(upperCaseRejex);
    bool hasDigits = password.contains(numberRejex);
    bool hasLowercase = password.contains(lowerCaseRejex);
    bool hasSpecialCharacters = password.contains(specialcharectorRejex);
    bool reacheMax = password.length > minChar;
    final status = PasswordStatus(
        hasDigits: hasDigits,
        hasUppercase: hasUppercase,
        hasLowercase: hasLowercase,
        hasMax: reacheMax);
    this._controller.add(status);
  }

  void dispose() {
    _controller.close();
  }
}

class PasswordStatus {
  bool hasLowercase;
  bool hasUppercase;
  bool hasDigits;
  bool hasMax;
  PasswordStatus(
      {this.hasUppercase = false,
      this.hasLowercase = false,
      this.hasDigits = false,
      this.hasMax = false});

  getStatusString() {
    if ((this.hasLowercase || this.hasUppercase) &&
        (!this.hasDigits && !this.hasMax)) {
      return "Very Week";
    } else if ((this.hasLowercase &&
        this.hasUppercase &&
        this.hasDigits &&
        this.hasMax)) {
      return "Very Strong";
    } else if (this.hasLowercase && this.hasUppercase && !this.hasMax) {
      return "Week";
    } else if ((this.hasLowercase &&
        this.hasUppercase &&
        this.hasDigits &&
        !this.hasMax)) {
      return "Strong";
    } else {
      return "";
    }
  }
}

enum LoginEvent { emailValidation }
