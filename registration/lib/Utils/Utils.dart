import 'package:registration/Utils/Constants.dart';

class Utils {
  static bool isValidEmail(String value) {
    return emailRejex.hasMatch(value);
  }
}
