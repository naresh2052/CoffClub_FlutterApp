  import 'package:flutter/material.dart';

  class Cappuccino extends StatelessWidget {


     List<String> ingredients = [
             "With Oat Milk",
             "With Cinnamon Powder",
             "With Chocolate Powder",
             "With Caramel Powder",
     ];

     List<String> smallPrice = [
        "4.29",
        "3.21",
        "6.46",
        "2.90",
     ];

     List<String> images = [
             "assets/Cappuccino/c1.jpg",
             "assets/Cappuccino/c2.jpg",
             "assets/Cappuccino/c3.jpg",
             "assets/Cappuccino/c4.jpg",
     ];

    @override
    Widget build(BuildContext context) {
      return ListView.builder(
        shrinkWrap: true,
          itemCount: ingredients.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (data, index){
             return Row(
               children: [
                 GestureDetector(
                   onTap: (){

                   },
                   child: Container(
                     height: 250,
                     width: 160,
                     decoration: BoxDecoration(
                       color: Colors.grey[700],
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Column(
                       children: [
                         SizedBox(height: 10),
                         Container(
                           height: 137,
                           width: 142,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                               image: AssetImage(images[index]),
                               fit: BoxFit.cover,
                             ),
                           ),
                         ),
                         Padding(padding: EdgeInsets.all(10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Cappuccino",
                             style: TextStyle(
                               fontSize: 15,
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                             ),
                             ),
                             SizedBox(height: 3),
                             Text(ingredients[index],
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.white70,
                               ),
                             ),
                             SizedBox(height: 5),
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
                                  Text("${smallPrice[index]}",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
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

                         )
                       ],
                     ),
                   ),
                 ),
                 SizedBox(width:20),

               ],
             );


      });
    }
  }
