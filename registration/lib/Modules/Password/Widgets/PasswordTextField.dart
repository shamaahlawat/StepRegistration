import 'package:flutter/material.dart';
import 'package:registration/Modules/Password/Bloc/PasswordBloc.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final PasswordBloc bloc;
  final Function passwordDidChange;
  const PasswordTextField(
      {Key key, this.passwordDidChange, this.bloc, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(7)),
      child: TextField(
        controller: this.controller,
        obscureText: true,
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.remove_red_eye),
            border: InputBorder.none,
            hintText: "Create Password"),
        onChanged: (password) => this.bloc.validatePassword(password),
      ),
    );
  }
}
