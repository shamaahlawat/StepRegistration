import 'package:flutter/material.dart';
import 'package:registration/Modules/Welcome/Bloc/LoginBloc.dart';

class EmailTextField extends StatelessWidget {
  final String errorMessage;
  final TextEditingController controller;
  final LoginBloc bloc;
  const EmailTextField(
      {Key key, this.controller, this.bloc, this.errorMessage = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 105,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      margin: EdgeInsets.only(top: 50, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(7)),
            child: TextField(
              controller: this.controller,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: InputBorder.none,
                  hintText: "Email"),
              onChanged: (email) {
                this.bloc.validateEmail(email);
              },
            ),
          ),
          Text(
            this.errorMessage,
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}
