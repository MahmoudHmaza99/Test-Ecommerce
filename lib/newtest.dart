import 'package:flutter/material.dart';
import 'package:testecommerc/Controllers/state_widget.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  @override
  _TestState createState() => _TestState();
}
class _TestState extends State<Test> {
 
  @override
  Widget build(BuildContext context) {
    final testInheritedWidget = stateInheritedWidget.of(context);
    return Scaffold(
        appBar: AppBar(title: Text("Test API"), centerTitle: true),
        body: Container(margin: EdgeInsets.only(top: 250),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                 testInheritedWidget.incermentCounter();
                  }, child: Text("+",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25))),
                  MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                  testInheritedWidget.decremntCounter();
              }, child: Text("-",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25))),
             
                ],
              ),
              Card(
                color: Colors.black,
                child: Text(testInheritedWidget.counter.toString(),style: TextStyle(
                  color: Colors.white,
                  fontSize: 70),),),
               MaterialButton(
                color: Colors.blueGrey,
                onPressed: () {
               testInheritedWidget.restCounter();
                  }, child: Text("0",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20))),
                  
            ],
          ),
        ));
  }
}

