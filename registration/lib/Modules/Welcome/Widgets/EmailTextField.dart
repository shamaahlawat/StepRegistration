import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      margin: EdgeInsets.only(top: 50, right: 20),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(7)),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              border: InputBorder.none,
              hintText: "Email"),
        ),
      ),
    );
  }
}
