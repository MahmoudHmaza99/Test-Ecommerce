import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  Send() {
    var formdata = formstate.currentState;
    formdata!.validate()
        ? Navigator.of(context).pushNamed("mainpage")
        : print("لم يتم التحقق");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(children: [
          Container(
              margin: EdgeInsets.only(right: 330, bottom: 0, top: 25),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop("Signup");
                  },
                  icon: Icon(Icons.arrow_back_ios))),
          Container(
            margin: EdgeInsets.only(right: 280),
            child: Text(
              "Login",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Form(
              key: formstate,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Card(
                      elevation: 5,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        validator: (value) => value!.length < 6
                            ? "Cannot be less Than for 6 charcter"
                            : null,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.green, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.amber, width: 3),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                                color: Colors.purpleAccent, width: 3),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.redAccent, width: 3),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        validator: (value) => value!.length < 6
                            ? "Cannot be less Than for 6 charcter"
                            : null,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.green, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.amber, width: 3),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                                color: Colors.purpleAccent, width: 3),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: Colors.redAccent, width: 3),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forget your passowrd",
                          style: TextStyle(
                              wordSpacing: 1, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("forget");
                            },
                            icon: Icon(
                              Icons.arrow_right_alt,
                              color: Colors.green,
                              size: 30,
                            )),
                      ],
                    )
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
            onPressed: Send,
            child: Text("LOGIN"),
          ),
          SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Text(
                "Or sign up with social account",
                style: TextStyle(
                    height: 5, wordSpacing: 1, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                        height: 65,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 236, 228, 228)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Image(
                              width: 30,
                              height: 30,
                              image: AssetImage("images2/go.png")),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: Container(
                        height: 65,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 236, 228, 228)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Image(
                              width: 30,
                              height: 30,
                              image: AssetImage("images2/fb.png")),
                        )),
                  )
                ],
              )
            ],
          ),
        ]),
      ],
    ));
  }
}
