import 'dart:async';

import 'package:registration/Utils/Utils.dart';

class LoginBloc {
  final _controller = StreamController.broadcast();
  Stream get stream => _controller.stream;

  void dispose() {
    _controller.close();
  }

  validateEmail(email) {
    final status = Utils.isValidEmail(email);
    _controller
        .add({LoginEvent.emailValidation: status ? null : "Invalid email"});
  }
}

enum LoginEvent { emailValidation }
