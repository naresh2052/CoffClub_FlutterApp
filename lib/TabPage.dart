
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/Cart.dart';
import 'package:untitled/HomePage.dart';
import 'package:untitled/NotificationPage.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int selectedIndex = 0;

  List dataList = [
      HomePage(),
      Cart(),
      NotificationPage(),
  ];


  void onTapped(int index){
        setState(() {
          selectedIndex = index;
        });
  }

  String name;
  String email;

   getdata()async{
     SharedPreferences preferences = await SharedPreferences.getInstance();
      setState(() {
        name = preferences.getString('Uname');
        email=preferences.getString('Email');
      });
   }

    @override
  void initState() {
      getdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.black,
       ),
        body: dataList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800],
        currentIndex: selectedIndex,
        onTap: onTapped,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey[600],
        showUnselectedLabels: false,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'Notification',
            backgroundColor: Colors.transparent,
          ),
        ] ,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage("assets/coffeebackground.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("assets/man.png"),
                        fit: BoxFit.cover,
                      )
                    ),

                  ),
                  SizedBox(height: 10),
                  Text("$name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                  SizedBox(height: 05),
                  Text("$email",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ],
              ) ,
            ),
             ListTile(
               leading: Icon(Icons.home),
               title: Text("Home"),
               onTap: (){},
             ),
             ListTile(
               leading: Icon(Icons.dashboard),
               title: Text("Categories"),
               onTap: (){},
             ),

             ListTile(
               leading: Icon(Icons.logout),
               title: Text("Log Out"),
               onTap: (){},
             ),
          ],
        ),

      ),
    );
  }
}
