import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Function onPressed;
  final double height;
  const NextButton({Key key, this.onPressed, this.height = 275})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: this.height,
      color: Colors.grey[100],
      child: Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        color: Colors.blueAccent,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: FlatButton(
          child: Text(
            "Next",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          onPressed: () => this.onPressed(context),
        ),
      ),
    );
  }
}
