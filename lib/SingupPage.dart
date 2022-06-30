import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/LoginPage.dart';
import 'package:untitled/TabPage.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  bool suffix = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    suffix= true;
  }

  SharedPreferences preferences;

   getdata()async{
     preferences = await SharedPreferences.getInstance();
     preferences.setString('Uname', "${name.text}");
     preferences.setString('Email', "${email.text}");

   }

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset:false ,
       backgroundColor: Colors.brown[700],
   body: Column(
     children: [
       Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
                color: Colors.white,
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
           ),
           child: Padding(
             padding: EdgeInsets.only(top: 100,right: 200),
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.brown[700],
                    ),
                  ),
                  SizedBox(height:07),
                  Text('Create new account',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.brown[500],
                    ),
                  ),
                ],
             ),
           ),
       ),
       SizedBox(height:55),
         Container(
            height:MediaQuery.of(context).size.height * 0.7,
            child: Padding(
              padding:  EdgeInsets.only(right: 30,left: 30),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                       textInputAction: TextInputAction.next,
                      controller: name,
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.account_circle_rounded,color: Colors.white,),
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
                          return 'Please enter name';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      controller: email,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.email_rounded,color: Colors.white,),
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
                          return 'Please enter Email';
                        }if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9-]+.[a-z]").hasMatch(value)){

                          return'Please enter valid Email';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: "Phone",
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.call,color: Colors.white,),
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
                          return 'Please enter Phone number';
                        }if(value.length > 10){
                          return'Please enter proper phone number';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: password,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      obscureText: suffix,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.lock_rounded,color: Colors.white,),
                        suffixIcon: IconButton(icon: suffix ? Icon(Icons.visibility , color: Colors.white)  : Icon(Icons.visibility_off,color: Colors.white),
                            onPressed: (){
                           setState(() {
                             suffix =!suffix;
                           });
                            }),
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
                          return 'Please enter Password';
                        }if(value.length < 8){
                          return'Must enter 8 characters ';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: confirmpassword,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.lock_rounded,color: Colors.white,),
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
                          return 'Please enter Password';
                        }if(value != password.text){
                          return'Password Not Match  ';
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
                          getdata();
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
                            child: Text("SignUp",
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
                        Text("Already have account ?",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white70,
                          ),
                        ),
                        BouncingWidget(
                          duration: Duration(milliseconds: 200),
                          scaleFactor: 1.5,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                            },
                              child:  Text(" Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                      ],
                    ),
                  ],
                ),
              ),
            )
         ),
     ],
   ),
    );
  }
}
