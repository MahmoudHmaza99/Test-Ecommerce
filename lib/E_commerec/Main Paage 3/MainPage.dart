import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> Ecommerec = [
    Page(),
    Center(child: Text("Shoooop.")),
    Container(
      color: Colors.amber,
      height: double.infinity,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.red,
      child: Text("aaaaaaaaaaaaaaaaaa"),
    ),
  ];
  int slectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                slectedindex = index;
              });
            },
            currentIndex: slectedindex,
            backgroundColor: Colors.white,
            iconSize: 35,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "Shop"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.badge_outlined), label: "Bag"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_sharp), label: "Profile"),
            ]),
        body: Ecommerec.elementAt(slectedindex));
  }
}

class Page extends StatefulWidget {
  Page({super.key});
  @override
  State<Page> createState() => _PageState();
}
class _PageState extends State<Page> {
  List<Map> New = [
    {"image": "clothes/new.jpg", "price": "100"},
    {
      "image": "clothes/n2.jpg",
      "price": "120",
    },
    {
      "image": "clothes/n3.jpg",
      "price": "105",
    },
    {
      "image": "clothes/n4.jpg",
      "price": "120",
    },
    {
      "image": "clothes/n5.jpg",
      "price": "123",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Image(
              fit: BoxFit.fill,
              width: double.infinity,
              height: 450,
              image: AssetImage("clothes/background.jpg"),
            ),
            Positioned(
                left: 10,
                top: 290,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Text(
                        "Fashion sale....",
                        style: TextStyle(
                            shadows: [
                              Shadow(color: Colors.green, blurRadius: 20)
                            ],
                            height: 1,
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      color: Colors.green,
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("page2");
                      },
                      child: Text("Check"),
                    ),
                  ],
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "New",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 180,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                )),
          ],
        ),
        Text(
          "You've never seen it before!",
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                New.length,
                (index) => Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 160,
                      height: 500,
                      color: Color.fromARGB(255, 231, 224, 224),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      top: 10,
                      bottom: 210,
                      child: Image(
                          height: 200,
                          width: 170,
                          image: AssetImage("${New[index]['image']}")),
                    ),
                    Positioned(
                      left: 122,
                      top: 280,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: IconButton(
                            color: Colors.green,
                            onPressed: () {},
                            icon: Icon(Icons.favorite_outline)),
                      ),
                    ),
                    Positioned(
                      top: 330,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ...List.generate(
                                5,
                                (index) => Icon(
                                  size: 17,
                                  (Icons.star),
                                  color: Colors.amber,
                                ),
                              ),
                              Text(
                                "(10)",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Text(
                            "Manga Boy",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text("Gry Suit",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Text(
                            "25 \$",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 25,
                      child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          textAlign: TextAlign.center,
                          "NEW",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Page2 extends StatefulWidget {
  Page2({super.key});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Map> Sale = [
    {"assets": "clothes/new.jpg", "pricesale": "50", "price": "100"},
    {
      "assets": "clothes/n2.jpg",
      "pricesale": "70",
      "price": "120",
    },
    {
      "assets": "clothes/n3.jpg",
      "pricesale": "80",
      "price": "105",
    },
    {
      "assets": "clothes/n4.jpg",
      "pricesale": "90",
      "price": "120",
    },
    {
      "assets": "clothes/n5.jpg",
      "pricesale": "65",
      "price": "123",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Image(
              fit: BoxFit.fill,
              width: double.infinity,
              height: 300,
              image: AssetImage("clothes/n2.jpg"),
            ),
            Positioned(
                left: 10,
                top: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Text(
                        "Street clothes",
                        style: TextStyle(
                            shadows: [
                              Shadow(color: Colors.green, blurRadius: 20)
                            ],
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Sale",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 180,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                )),
          ],
        ),
        Text(
          "super sale",
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                Sale.length,
                (index) {
                  return Row(children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 160,
                          height: 500,
                          color: Color.fromARGB(255, 231, 224, 224),
                        ),
                        Positioned(
                          right: 10,
                          left: 10,
                          top: 10,
                          bottom: 210,
                          child: Image(
                              height: 200,
                              width: 170,
                              image: AssetImage("${Sale[index]['assets']}")),
                        ),
                        Positioned(
                          left: 122,
                          top: 280,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: IconButton(
                                color: Colors.green,
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline)),
                          ),
                        ),
                        Positioned(
                          top: 330,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ...List.generate(
                                    5,
                                    (index) => Icon(
                                      size: 17,
                                      (Icons.star),
                                      color: Colors.amber,
                                    ),
                                  ),
                                  Text(
                                    "(10)",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Text(
                                "Manga Boy",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text("Gry Suit",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Row(
                                children: [
                                  Text(
                                    "${Sale[index]['price']}\$    ",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "${Sale[index]['pricesale']}\$",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 25,
                          child: Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              textAlign: TextAlign.center,
                              "SALE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]);
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}
