import 'package:flutter/material.dart';



class CappuccinoDetails extends StatefulWidget {
  const CappuccinoDetails({Key key}) : super(key: key);

  @override
  _CappuccinoDetailsState createState() => _CappuccinoDetailsState();
}

class _CappuccinoDetailsState extends State<CappuccinoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/Cappuccino/c1.jpg"),
                    fit: BoxFit.cover
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
