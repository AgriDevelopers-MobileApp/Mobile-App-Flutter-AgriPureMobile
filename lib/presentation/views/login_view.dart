import 'package:agripure_mobile/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(40, 40, 40, 1.0),
        body: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter email",
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
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
                child: Container(
                  child: Text("Forgot your password?",
                  style: TextStyle(
                    color: const Color.fromRGBO(80, 96, 130, 1.0),
                    fontSize: 16
                  ),),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(47, 152, 48, 1.0)),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Log in", style: TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      )
                  ),
                ],
              ),

              SizedBox(
                height: 15,
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
    );
  }
}