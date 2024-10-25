import 'package:assigment/widgets/aniversaries.dart';
import 'package:assigment/widgets/birthdays_wishing.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Genral extends StatefulWidget {
  const Genral({super.key});

  @override
  _GenralState createState() => _GenralState();
}

class _GenralState extends State<Genral> {
  DateTime selectedDate = DateTime.now();
  int totalBirthdays = 5; // Example count of birthdays
  int totalAnniversaries = 3; // Example count of anniversaries

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Card(
      color: const Color.fromARGB(221, 35, 48, 71),
      elevation: 4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'General 10:00 AM to 7:00 PM',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Header: General 10:00 AM to 7:00 PM

            // First Container: Full Calendar
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 4, bottom: 4),
              child: Container(
                width: width * 0.5, // Adjusted width for better appearance
                height: height * 0.5, // Reduced height for compact calendar
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TableCalendar(
                  focusedDay: selectedDate,
                  firstDay: DateTime.utc(2000, 1, 1),
                  lastDay: DateTime.utc(2100, 12, 31),
                  calendarStyle: const CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.blueAccent,
                      // shape: BoxShape.circle,
                    ),
                  ),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      selectedDate = selectedDay;
                    });
                  },
                ),
              ),
            ),

            // Second Container: Total Birthdays
            const Padding(
              padding: EdgeInsets.only(right: 15, left: 15, top: 5),
              child: BirthdaysWishing(),
            ),

            // Third Container: Total Anniversaries
            const Padding(
              padding: EdgeInsets.only(right: 15, left: 15, top: 5),
              child: Aniversaries(),
            )
          ],
        ),
      ),
    );
  }
}
