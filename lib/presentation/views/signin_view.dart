import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool remember = false;

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
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter password",
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Row(
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

              SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(47, 152, 48, 1.0)),
                        onPressed: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 20)),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(40, 58, 176, 1.0)),
                      onPressed: (){},
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
    );
  }
}
