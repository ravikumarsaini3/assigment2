import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BirthdaysWishing extends StatelessWidget {
  const BirthdaysWishing({super.key});

  @override
  Widget build(BuildContext context) {
    int totalBirthdays = 2; // Example count of birthdays

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width * 0.5,
        height: height * 0.29,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const Text(
              'Today Birthdays',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white10,
                  backgroundImage: AssetImage('assigment/images/e1.jpg'),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white10,
                  backgroundImage: AssetImage('assigment/images/e2.png'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(color: Colors.white60, fontSize: 16),
                ),
                SizedBox(
                  width: width * 0.025,
                  height: height * 0.06,
                ),
                Text(
                  '| $totalBirthdays |',
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              width: width * 0.025,
              height: height * 0.02,
            ),
            ElevatedButton.icon(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white),

              icon: const Icon(Icons.send), // Replace with your desired icon
              label: const Text(
                  'Birthdays Wishing'), // Replace with your desired text
            )
          ],
        ),
      ),
    );
  }
}
