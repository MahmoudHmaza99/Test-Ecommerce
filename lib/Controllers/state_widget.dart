import 'package:flutter/material.dart';
class stateWidget extends StatefulWidget {
  final Widget child;
  stateWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  State<stateWidget> createState() => _stateWidgetState();
}

class _stateWidgetState extends State<stateWidget> {
  var counter = 0;
  void incermentCounter() {
    setState(() {
      counter++;
    });
  }

  void decremntCounter() {
    setState(() {
      counter--;
      if (counter < 0) {
        counter = 0;
      }
    });
  }

  void restCounter() {
    setState(() {
      if (counter != 0) {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return stateInheritedWidget(
      counter: counter,
      state: this,
      child: widget.child,
    );
  }
}

class stateInheritedWidget extends InheritedWidget {
  final int counter;
  final _stateWidgetState state;
  stateInheritedWidget({
    Key? key,
    required super.child,
    this.counter = 0,
    required this.state,
  }) : super(key: key);

  @override
  bool updateShouldNotify(covariant stateInheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  }

  static _stateWidgetState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<stateInheritedWidget>()!.state;
  }
}



