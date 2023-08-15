import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testecommerc/E_commerec/Auth%201/Forget%20passowrd.dart';
import 'package:testecommerc/E_commerec/Auth%201/Log%20in.dart';
import 'package:testecommerc/E_commerec/Auth%201/Sign%20up.dart';
import 'package:testecommerc/E_commerec/Main%20Paage%203/MainPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
  home: Signup(),
  routes: {
      "login1":(context) => Login(),
      "forget":(context) => Forget(),
      "mainpage":(context) => MainPage(),
      "page2":(context) => Page2(),
      "Signup":(context) => Signup(),
      
      },
  );
  }}