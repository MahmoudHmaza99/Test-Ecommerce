import 'package:flutter/material.dart';
class Forget extends StatelessWidget {
  const Forget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            margin: EdgeInsets.only(right: 330, bottom: 0, top: 25),
            child:
                IconButton(onPressed: () {
                  Navigator.of(context).pushNamed("login1");
                }, icon: Icon(Icons.arrow_back_ios))),
        Container(
          margin: EdgeInsets.only(right:150),
          child: Text(
            "Forget password",
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Form(
            child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Please, enter your email address. You will recive a link to create a new passowrd via email.",style: TextStyle(height: 1.5),),
              SizedBox(height: 20,),
              Card(
                elevation: 5,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.green, width: 3),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.amber, width: 3),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          BorderSide(color: Colors.purpleAccent, width: 3),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.redAccent, width: 3),
                    ),
                  ),
                ),
              ),
            
             
             SizedBox(height: 100,)
            ],
          ),
        )),
        MaterialButton(
          elevation: 9,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          padding: EdgeInsets.symmetric(horizontal: 155, vertical: 17),
          textColor: Colors.white,
          color: Colors.green,
          onPressed: () {},
          child: Text("SEND"),
        ),
      
      ]),
    );
  }
}