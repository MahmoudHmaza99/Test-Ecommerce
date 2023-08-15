import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testecommerc/Counter_state/Stateone.dart';

class ShowCounter extends StatelessWidget {
  const ShowCounter({super.key});
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
         Consumer<Mymodel>(builder: (context, mymodel, child) {
          print("Rebuild");
          return
            ElevatedButton(onPressed: (){
            mymodel.showName("My name is Mahmoud..");
            }, child: Text("My model"));
         },),
       Consumer<Mymodel>(builder: (context, value, child) {
         return  Card(
          color: Color.fromARGB(176, 215, 33, 243),
          child: Text(value.name,style: TextStyle(fontSize: 25),));
       },),
            Consumer<Anothermodel>(builder: (context, anothermodel, child) {
               print("Rebuild threeeeee");
              return  ElevatedButton(onPressed: (){
              anothermodel.showNameParent();
            }, child: Text("Another model"));
            },)
        ],),
      )
      );
  }}