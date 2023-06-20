import 'package:agripure_mobile/presentation/screens/auth_screen.dart';
import 'package:agripure_mobile/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool _isLoading = false;

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
                    child: Text("Full Name",
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
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter full name",
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 8,
                  ),

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

                  const SizedBox(
                    height: 8,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text("Email",
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
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter email",
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 8,
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

                  SizedBox(
                    height: 30,
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

                              AuthService.signIn(_emailController.text, _passwordController.text, _nameController.text, _usernameController.text).then((_) {
                                String message = "New user created. Log In";
                                Fluttertoast.showToast(
                                    msg: message,
                                    toastLength: Toast.LENGTH_LONG,
                                    backgroundColor: const Color.fromRGBO(
                                        47, 152, 48, 1.0),
                                    textColor: Colors.white,
                                    fontSize: 18.0
                                );
                                Navigator.push(context, MaterialPageRoute(builder: (context) => AuthScreen()));
                              }).catchError((error){
                                String errorMessage = "Ocurrió un error durante el inicio de sesión";
                                errorMessage = error.toString();
                                Fluttertoast.showToast(
                                    msg: errorMessage,
                                    toastLength: Toast.LENGTH_SHORT,
                                    backgroundColor: const Color.fromRGBO(
                                        222, 15, 15, 1.0),
                                    textColor: Colors.white,
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
                              child: Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 20)),
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
                    height: 8,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(40, 58, 176, 1.0)),
                          onPressed: (){

                          },
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(Icons.facebook, color: Colors.white,)
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0)),
                          onPressed: (){},
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(Icons.apple, color: Colors.white,)
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(
                              255, 0, 0, 1.0)),
                          onPressed: (){},
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(Icons.g_mobiledata, color: Colors.white,)
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
            )
        )
    );
  }
}
