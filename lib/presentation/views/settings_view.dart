import 'package:flutter/material.dart';
import 'package:agripure_mobile/services/auth_service.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 1.0), // Color de fondo gris
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Alinear al centro
          children: [
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20), // Espacio en blanco entre "Settings" y las divisiones

            // División para "Profile Settings" centrada
            Container(
              margin: EdgeInsets.symmetric(vertical: 10), // Ajuste del margen vertical
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Centrar el texto
                children: [
                  ExpansionTile(
                    title: Text(
                      "Profile Settings",
                      textAlign: TextAlign.center, // Centrar el texto
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onExpansionChanged: (value) {
                      setState(() {
                        isExpanded = value;
                      });
                    },
                    children: [
                      if (isExpanded)
                        ListTile(
                          title: Text(
                            "Change Email",
                            textAlign: TextAlign.center, // Centrar el texto
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Change Email",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Color.fromRGBO(40, 40, 40, 1.0),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "New Email Address",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      TextField(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          hintText: "Enter your new email",
                                          hintStyle: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Password",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      TextField(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          hintText: "Enter your password",
                                          hintStyle: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                        obscureText: true,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Acciones al hacer clic en el botón "Change"
                                        Navigator.of(context).pop();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.grey, // Color de fondo verde
                                        onPrimary: Colors.white, // Color del texto en blanco
                                      ),
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Acciones al hacer clic en el botón "Cancel"
                                        Navigator.of(context).pop();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.green, // Color de fondo verde
                                        onPrimary: Colors.white, // Color del texto en blanco
                                      ),
                                      child: Text(
                                        "Change",
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white.withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      if (isExpanded)
                        ListTile(
                          title: Text(
                            "Change Password",
                            textAlign: TextAlign.center, // Centrar el texto
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    "Change Password",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Color.fromRGBO(40, 40, 40, 1.0),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Current Password",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      TextField(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          hintText: "Current Password",
                                          hintStyle: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "New Password",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      TextField(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          hintText: "Enter New Password",
                                          hintStyle: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                        obscureText: true,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Reenter new Password",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      TextField(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          hintText: "Enter New Password",
                                          hintStyle: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                        obscureText: true,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Acciones al hacer clic en el botón "Change"
                                        Navigator.of(context).pop();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.grey, // Color de fondo verde
                                        onPrimary: Colors.white, // Color del texto en blanco
                                      ),
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Acciones al hacer clic en el botón "Cancel"
                                        Navigator.of(context).pop();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.green, // Color de fondo verde
                                        onPrimary: Colors.white, // Color del texto en blanco
                                      ),
                                      child: Text(
                                        "Change",
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white.withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                    ],
                  ),
                ],
              ),
            ),

            // Línea de división
            Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),

            // "Sign Off"
            Expanded(
              child: GestureDetector(
                onTap: () {
                  AuthService.logOut().then((_) => {
                    Navigator.pushReplacementNamed(context, '/auth')
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20), // Ajuste del margen superior
                  child: Text(
                    "Sign Off",
                    textAlign: TextAlign.center, // Centrar el texto
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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