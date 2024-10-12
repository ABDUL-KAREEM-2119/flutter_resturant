import 'package:flutter/material.dart';
import 'package:flutter_resturant/coffe.dart';
import 'package:flutter_resturant/fruit.dart';
import 'package:flutter_resturant/new.dart';
import 'package:flutter_resturant/pageview.dart';
import 'package:flutter_resturant/pizza.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Sadapay'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var height, width;
  PageController pageController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Color.fromARGB(255, 243, 232, 232),
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.notes_rounded), Icon(Icons.search)],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text(
                "AK Resturant",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              Text(
                "Healthy and nutritious food recipies",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.05,
                width: width,
                color: Color.fromARGB(255, 243, 232, 232),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewPage()),
                        );
                      },
                      child: Container(
                        height: height * 0.01,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.014,
                            ),
                            Icon(Icons.coffee),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "Meat",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Akking()));
                      },
                      child: Container(
                        height: height * 0.01,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(Icons.food_bank),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "Rice",
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Kareem()));
                      },
                      child: Container(
                        height: height * 0.01,
                        width: width * 0.24,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(Icons.restaurant),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "Burger ",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mypizza()));
                      },
                      child: Container(
                        height: height * 0.01,
                        width: width * 0.23,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(Icons.local_dining),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "Pizza",
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Mycofe())
                        );
                      },
                      child: Container(
                        height: height * 0.01,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(Icons.coffee),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "Coffe",
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.35,
                width: width,
                color: Color.fromARGB(255, 243, 232, 232),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: height * 0.3,
                      width: width * 0.42,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          CircleAvatar(
                            radius: 78,
                            backgroundImage: AssetImage("images/food.jpg"),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              "Plutter Dish ...",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              " So delicious food",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 57),
                                child: Text(
                                  "250 kcal",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Icon(Icons.favorite_outline_outlined)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      height: height * 0.3,
                      width: width * 0.42,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          CircleAvatar(
                            radius: 78,
                            backgroundImage: AssetImage("images/meat.jpg"),
                          ),
                          SizedBox(
                            height: height * 0.006,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              " ChickenFried ...",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              "  So delicious food",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.024,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 57),
                                child: Text(
                                  "120 kcal",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Icon(Icons.favorite_outline_outlined)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      height: height * 0.3,
                      width: width * 0.42,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          CircleAvatar(
                            radius: 78,
                            backgroundImage: AssetImage("images/bir.jpg"),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              " BiryaniFried ...",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              " So delicious food",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.024,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 57),
                                child: Text(
                                  "115 kcal",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Icon(Icons.favorite_outline_outlined)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      height: height * 0.3,
                      width: width * 0.42,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          CircleAvatar(
                            radius: 78,
                            backgroundImage: AssetImage("images/creamy.jpg"),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              " CreamyFried ...",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              "  So delicious food",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.024,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 57),
                                child: Text(
                                  "250 kcal",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Icon(Icons.favorite_outline_outlined)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.025,
                  ),
                  Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Food",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.22,
                width: width * 0.97,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.01,
                    ),
                    CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage("images/potato.jpg"),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Text(
                          "Garlic Potaties",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Crispy Garlic Roasted ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Potatoes",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            Text(
                              "250 Kcol",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.25,
                            ),
                            Icon(Icons.favorite_outline_sharp)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
