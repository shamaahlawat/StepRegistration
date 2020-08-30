import 'package:flutter/material.dart';

class StepTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  const StepTitle({Key key, this.title = '', this.subTitle = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10,),
          Text(
            this.subTitle,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
