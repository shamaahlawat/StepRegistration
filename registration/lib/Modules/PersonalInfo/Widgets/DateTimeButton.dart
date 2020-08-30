import 'package:flutter/material.dart';

class DateTimeButton extends StatelessWidget {
  final String hintText;
  final String value;
  final Function onPressed;
  const DateTimeButton(
      {Key key, this.hintText = '', this.value = '', this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => this.onPressed(context),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 40,
        padding: EdgeInsets.only(left: 10, right: 10, top: 5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(7)),
        child: Stack(
          children: <Widget>[
            Text(
              this.hintText,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(this.value),
              ],
            ),
            Positioned(
                top: 10,
                right: 0,
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }
}
