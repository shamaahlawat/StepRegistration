import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "Welcome to",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "GIN ",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Finans",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class WelcomeSubtitle extends StatelessWidget {
  const WelcomeSubtitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 20),
      child: Text(
        "Welcome to The Bank of the Future.\nManage and track your account on \nthe go.",
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    );
  }
}
