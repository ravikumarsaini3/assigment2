import 'package:flutter/material.dart';

class Aniversaries extends StatelessWidget {
  const Aniversaries({super.key});

  @override
  Widget build(BuildContext context) {
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
              'Anniversaries',
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
                CircleAvatar(
                  backgroundColor: Colors.white10,
                  backgroundImage: AssetImage('assigment/images/e2.png'),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white10,
                  backgroundImage: AssetImage('assigment/images/e3.png'),
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
                  '| 3 |',
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
                  'Anniversaries Wishing'), // Replace with your desired text
            )
          ],
        ),
      ),
    );
  }
}
