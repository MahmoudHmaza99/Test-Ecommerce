import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testecommerc/Model/cart.dart';
import 'package:testecommerc/Model/item.dart';
class HomeState extends StatelessWidget {
   HomeState({super.key});
  List<Item> items =[
    Item(
      name: "Oppo A70 s",
      price: 3850,
    ),
    Item(
      name: "i phone 30 pro max"
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(actions: [
        Row(
          children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart_outlined),),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text("0"),
          ),
        ],)
      ],) ,
      body: ListView.builder(
        itemCount:items.length ,
        itemBuilder: (context, index) {
          return Card(child: ListTile(
            title: Text("${items[index].name}"),
            trailing: IconButton(icon: Icon(Icons.add),onPressed: (){}),
          ));
        },),
    );
    
    }}