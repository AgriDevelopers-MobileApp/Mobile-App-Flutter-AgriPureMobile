import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({Key? key}) : super(key: key);
  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(40, 40, 40, 1.0),
      appBar: AppBar(title: Text("Good Morning User. ")),

      body: contend(),
    );
  }

  Widget contend()
  {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(

        children: [
          Text("SELECTED DAY " +today.toString().split(" ")[0]),



          Container(

            child:  TableCalendar(
              locale: "en_US",
              rowHeight: 43,
              headerStyle:
              HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day)=>isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2021,05,31),
              lastDay: DateTime.utc(2030, 3, 15),
              onDaySelected: _onDaySelected,

            ),

          ),
        ],
      ),
    );
  }
}