import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:untitled/CoffeePage/SpacialCoffee.dart';
import 'CoffeePage/Cappuccino.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15,right: 15),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text("Find the best\ncoffee for you ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 48,
                        width: 365,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[400],

                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Find your coffee....",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            prefixIcon: Icon(Icons.search,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ),

              SizedBox(height: 10),
              Container(
                  height:350,
                  width: MediaQuery.of(context).size.width,
                  child:ContainedTabBarView(
                    tabBarProperties: TabBarProperties(
                       labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                       ),
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.grey[600],
                      indicatorColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.label,
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    tabs: [
                      Text("Cappuccino"),
                      Text("Espresso"),
                      Text("Latte"),
                      Text("Macchiato"),
                    ],
                    views: [
                      Container(
                        height: 300,
                        child: Center(
                            child: Cappuccino(),
                        ),
                      ),

                      Container(
                        child: Center(
                          child: Cappuccino(),

                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text("Latte"),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text("Macchiato"),
                        ),
                      ),
                    ],
                  ) ,
              ),
              Text("Spacial For You",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
              ),
                      SizedBox(height: 10),
              SpacialCoffee(),
            ],
          ),
                ),
        ),
      ),

    );
  }
}




