import 'package:flutter/material.dart';
import 'package:testecommerc/Controllers/state_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   
    final stateWidget = stateInheritedWidget.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            stateWidget.counter.toString(),
            style: TextStyle(fontSize: 30),),
         SizedBox( height: 30,),
         ElevatedButton.icon(
          icon:  Icon(Icons.color_lens),
          onPressed:(){
            
          } , label:  Text("Change primary swatch")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ElevatedButton(onPressed: (){
              stateWidget.incermentCounter();
            }, child: Text('+')),ElevatedButton(onPressed: (){
              stateWidget.decremntCounter();
            }, child: Text('-')),],)
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){
       
         stateWidget.incermentCounter();
      },child: Icon(Icons.add ),),
    );
  }
}
