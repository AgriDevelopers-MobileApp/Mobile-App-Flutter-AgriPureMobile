import 'package:agripure_mobile/presentation/views/calendar_view.dart';
import 'package:agripure_mobile/presentation/views/identification_view.dart';
import 'package:agripure_mobile/presentation/views/plants_view.dart';
import 'package:agripure_mobile/presentation/views/settings_view.dart';
import 'package:agripure_mobile/presentation/views/specialist_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final screens = [const PlantsView(), const CalendarView(), const SpecialistView(), const IdentificationView(),  const SettingsView()];

    return Scaffold(
      appBar: AppBar(
        title: Text("AgriPure, tu asistente agrícola", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,),
      backgroundColor: const Color.fromRGBO(40, 40, 40, 1.0),
      body: SafeArea(
        child: IndexedStack(
          index: selectedIndex,
          children: screens
        ),),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 20,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.yard_outlined),
              activeIcon: Icon(Icons.yard),
              label: "Plants",
              backgroundColor: Colors.green
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              activeIcon: Icon(Icons.calendar_month),
              label: "Calendar",
              backgroundColor: Colors.green
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.psychology_alt_outlined),
              activeIcon: Icon(Icons.psychology_alt),
              label: "Specialists",
              backgroundColor: Colors.green
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.linked_camera_outlined),
              activeIcon: Icon(Icons.linked_camera),
              label: "Identify",
              backgroundColor: Colors.green
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.green
          )
        ],
      ),
    );
  }
}
