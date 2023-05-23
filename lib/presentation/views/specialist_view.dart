import 'package:flutter/material.dart';

class SpecialistView extends StatefulWidget {
  const SpecialistView({Key? key}) : super(key: key);

  @override
  State<SpecialistView> createState() => _SpecialistViewState();
}

class _SpecialistViewState extends State<SpecialistView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Specialist",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),

              )
            ],
          ),
        )
    );
  }
}
