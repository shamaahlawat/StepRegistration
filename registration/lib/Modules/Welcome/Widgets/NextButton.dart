import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Function onPressed;
  final double height;
  final Color backgroundColor;
  const NextButton(
      {Key key, this.onPressed, this.height = 275, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: this.height,
      color:
          this.backgroundColor == null ? Colors.blueAccent : Colors.grey[100],
      child: Container(
       // margin: EdgeInsets.only(right: 20, ),
        color:
            this.onPressed == null ? Colors.blueAccent[100] : Colors.blue,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: FlatButton(
          color: this.onPressed == null ? Colors.blueAccent[100] : Colors.blue,
          child: Text(
            "Next",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          onPressed:
              this.onPressed != null ? () => this.onPressed(context) : null,
        ),
      ),
    );
  }
}
