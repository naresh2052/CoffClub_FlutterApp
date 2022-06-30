import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/SingupPage.dart';
import 'package:untitled/TabPage.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();

  bool suffix=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    suffix=true;
  }

    final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
               children: [
                  Container(
                    child: LottieBuilder.asset('assets/44298-coffee-love.json',
                       height: 200,
                       width: 500,
                    ),
                  ),
                 Padding(
                   padding: EdgeInsets.only(right: 230),
                   child: Text('Login',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 35,
                       color: Colors.brown[700],
                     ),
                   ),
                 ),
                 SizedBox(height:07),
                 Padding(
                   padding: EdgeInsets.only(right: 153),
                   child: Text('Login into your account ',
                     style: TextStyle(
                       fontSize: 15,
                       color: Colors.brown[400],
                     ),
                   ),
                 ),
                 SizedBox(height:10),
                 Container(
                   height: 600,
                   width: 400,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(25),
                     color: Colors.brown[700],
                   ),
               child: Form(
                 key: formkey,
                 child: Padding(
                   padding: EdgeInsets.only(left: 30, right: 30),
                   child: Column(
                     children: [
                       SizedBox(height:40),
                   TextFormField(
                     keyboardType: TextInputType.name,
                     textInputAction: TextInputAction.next,
                     decoration: InputDecoration(
                       labelText: "UserName",
                       labelStyle: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                         color: Colors.white,
                       ),
                       prefixIcon: Icon(Icons.account_circle_rounded,
                        color: Colors.white,
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(15),
                         borderSide: BorderSide(color: Colors.white),
                       ),
                       focusedBorder:OutlineInputBorder(
                         borderRadius: BorderRadius.circular(15),
                         borderSide: BorderSide(color: Colors.white),
                       ),
                       errorBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(15),
                         borderSide: BorderSide(color: Colors.red),
                       ),
                       focusedErrorBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(15),
                         borderSide: BorderSide(color: Colors.red),
                       ),
                     ),
                     validator: (String value) {
                         if(value.isEmpty){
                            return 'Please enter Username';
                         }else{
                            return null;
                         }
                     },
                   ),
                        SizedBox(height: 10),
                       TextFormField(
                         keyboardType: TextInputType.name,
                         textInputAction: TextInputAction.done,
                         obscureText: suffix,
                         decoration: InputDecoration(
                           fillColor: Colors.brown[700],
                           labelText: "Password",
                           labelStyle: TextStyle(
                             fontSize: 15,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                           ),
                           prefixIcon: Icon(Icons.lock_rounded,color: Colors.white,),
                           suffixIcon: IconButton(icon: suffix ? Icon(Icons.visibility,color: Colors.white) : Icon(Icons.visibility_off,color:Colors.white),
                             onPressed:(){
                             setState(() {
                               suffix=!suffix;
                             });
                           },
                           ),
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(15),
                             borderSide: BorderSide(color: Colors.white),

                           ),
                           focusedBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(15),
                             borderSide: BorderSide(color: Colors.white),
                           ),
                           errorBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(15),
                             borderSide: BorderSide(color: Colors.red),
                           ),
                           focusedErrorBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(15),
                             borderSide: BorderSide(color: Colors.red),
                           ),
                           ),
                          validator: (String value){
                             if(value.isEmpty){

                                return 'Please enter password';

                             }if (value.length < 8){

                                  return 'Must enter 8 characters';

                             }else{
                                return null;

                             }
                             },
                         ),
                       SizedBox(height:25),
                   BouncingWidget(
                     duration: Duration(milliseconds: 100),
                     scaleFactor: 1.5,
                     onPressed: (){
                       if(formkey.currentState.validate()){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> TabPage()));
                       }
                     },
                     child: Container(
                       height: 40,
                       width: 140,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Center(
                         child: Text("Login",
                           style: TextStyle(
                             fontSize: 22,
                             fontWeight: FontWeight.bold,
                             color: Colors.brown[500],
                           ),
                         ),
                       ),
                     ),
                   ),
                       SizedBox(height:10),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Don't have account ?",
                             style: TextStyle(
                               fontSize: 15,
                               color: Colors.white70,
                             ),
                           ),
                              BouncingWidget(
                                duration: Duration(milliseconds: 100),
                                scaleFactor: 1.5,
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUp()));
                                  },
                                    child: Text(" Sign Up",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),
                         ],
                       ),
                       SizedBox(height:10),
                       BouncingWidget(
                         duration: Duration(milliseconds: 100),
                         scaleFactor: 1.5,
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>TabPage()));
                         },
                         child: Text("Skip",
                           style: TextStyle(
                             fontSize: 17,
                             fontWeight: FontWeight.bold,
                             color: Colors.white70,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
                 ),
               ],
          ),
        ),
    );
  }
}
