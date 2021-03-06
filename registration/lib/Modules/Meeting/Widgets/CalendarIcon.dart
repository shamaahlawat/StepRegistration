import 'package:flutter/material.dart';

class CalendarIcon extends StatefulWidget {
  @override
  _CalendarIconState createState() => _CalendarIconState();
}

class _CalendarIconState extends State<CalendarIcon>
    with TickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Container(
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.5),
              shape: CircleBorder(),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0 * animationController.value),
              child: child,
            ),
          );
        },
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: IconButton(
            onPressed: () {},
            color: Colors.blue,
            icon: Icon(Icons.calendar_today, size: 24),
          ),
        ),
      ),
    );
  }
}
