final lowerCaseRejex = RegExp(r'[a-z]');
final upperCaseRejex = RegExp(r'[A-Z]');
final numberRejex = RegExp(r'[0-9]');
final specialcharectorRejex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
final minChar = 9;
final emailRejex = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
