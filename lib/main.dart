import 'package:agripure_mobile/presentation/screens/auth_screen.dart';
import 'package:agripure_mobile/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

Widget _defaultHome = const AuthScreen();

void main() {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgriPure App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const AuthScreen(),
      routes: {
        '/': (context) => _defaultHome,
        '/home': (context) => const HomeScreen(),
        '/auth': (context) => const AuthScreen()

      },
    );
  }
}