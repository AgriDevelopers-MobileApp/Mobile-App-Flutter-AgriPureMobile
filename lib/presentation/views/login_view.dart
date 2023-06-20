import 'dart:async';
import 'package:agripure_mobile/presentation/screens/home_screen.dart';
import 'package:agripure_mobile/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(40, 40, 40, 1.0),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text("Username",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter username",
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text("Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter password",
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: remember,
                        onChanged: (value) {
                          setState(() {
                            remember = value!;
                          });},
                        checkColor: Colors.white,
                        activeColor: const Color.fromRGBO(47, 152, 48, 1.0),
                      ),
                      Text("Remember this credentials",
                        style: TextStyle(fontSize: 15, color: Colors.white),)
                    ],
                  ),
                ),

                SizedBox(
                  height: 8,
                ),

                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(47, 152, 48, 1.0)),
                          onPressed: (){
                            setState(() {
                              _isLoading = true;
                            });

                            AuthService.logIn(_usernameController.text, _passwordController.text).then((_) =>{
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => HomeScreen())),
                            }).catchError((error){
                              String errorMessage = "Ocurrió un error durante el inicio de sesión";
                              errorMessage = error.toString();
                              Fluttertoast.showToast(
                                  msg: errorMessage,
                                  toastLength: Toast.LENGTH_SHORT,
                                  backgroundColor: const Color.fromRGBO(
                                      255, 174, 0, 1.0),
                                  textColor: Colors.black,
                                  fontSize: 18.0
                              );
                            }).whenComplete(() {
                              setState(() {
                                _isLoading = false;
                              });
                            });
                          },
                          child: _isLoading
                              ? Container(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                strokeWidth: 3.0,
                                  )
                                ) : Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("Log in", style: TextStyle(color: Colors.white, fontSize: 20)),
                          ),
                        )
                    ),
                  ],
                ),

                SizedBox(
                  height: 8,
                ),

                Center(
                  child: Text("or with",
                    style: TextStyle(
                        color: const Color.fromRGBO(100, 100, 100, 1.0),
                        fontSize: 15
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(40, 58, 176, 1.0)),
                            onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.facebook, color: Colors.white,),
                                  ),
                                ),

                                Text("Facebook", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
                              ],
                            ),
                          ),
                        )
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(
                                19, 19, 19, 1.0)),
                            onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.apple, color: Colors.white,),
                                  ),
                                ),

                                Text("Apple", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
                              ],
                            ),
                          ),
                        )
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(
                                255, 0, 0, 1.0)),
                            onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.g_mobiledata, color: Colors.white, size: 30,),
                                  ),
                                ),

                                Text("Gmail", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
                              ],
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ],
            ),
          )
        ),
    );
  }
}