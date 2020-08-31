import 'package:flutter/material.dart';

class ProgresBar extends StatelessWidget {
  final int currentIndex;
  ProgresBar({Key key, this.currentIndex = 1}) : super(key: key);
  final steps = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_createSteps(context)],
      ),
    );
  }

  _createSteps(BuildContext context) {
    return Row(
        children: steps
            .map((index) => index == 4
                ? _stepCircle(index)
                : Row(
                    children: <Widget>[
                      _stepCircle(index),
                      _stepDivider(context),
                    ],
                  ))
            .toList());
  }

  Widget _stepCircle(int index) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.black),
        color: index <= currentIndex ? Colors.green : Colors.white,
      ),
      child: Text(
        "$index",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _stepDivider(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final stepWidth = (width - 250) / (steps.length - 1);
    return Container(
      width: stepWidth,
      height: 3,
      color: Colors.black,
    );
  }
}
