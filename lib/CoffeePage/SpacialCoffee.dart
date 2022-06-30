import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpacialCoffee extends StatelessWidget {

  List<String> images = [

    "assets/Spacialcoffee/sc1.jpg",
    "assets/Spacialcoffee/sc2.jpg",
    "assets/Spacialcoffee/sc3.jpg",

  ];

  List<String> ingredients =[
        "Ice, Caramel Sauce, Espresso",
        "Turkish Coffee, Sugar",
        "Black Coffee, water",
  ];

 List<String> coffeename= [
   "Caramel Macchiato ",
   "Turkish Coffee",
   "Coffee Club Spacial ",
 ];
  List <String> price =[
    "7.29",
    "8.21",
    "9.46",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
        itemCount: ingredients.length,
        itemBuilder: (data ,index){
           return Column(
              children: [
                SizedBox(height: 10),
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 09),
                      Container(
                        height: 121,
                        width: 151,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(padding: EdgeInsets.only(right: 10,left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 09),
                            Text(coffeename[index],
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 05),
                            Text(ingredients[index],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                            SizedBox(height: 05),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(r'$ ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("${price[index]}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 50),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],

                  ),
                ),
                SizedBox(height:10),
              ],

           );
        }

    );
  }
}





