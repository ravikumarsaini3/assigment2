import 'package:flutter/material.dart';

class TopRatingProject extends StatelessWidget {
  const TopRatingProject({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assigment/images/top2.jpg', // Update path as necessary
                fit: BoxFit.cover,
              ),
            ),
            // Overlay container
            Container(
              width: width * 0.6,
              height: height * 0.28,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ETHEREUM 2.0',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      'Top Rating \n Project',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Tranding Project and High Rating\n Project Create By Team',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black87,
                            foregroundColor: Colors.white),
                        child: Text('Learn More')),
                  ],
                ),
              ), // Add transparency if needed
            ),
            // Additional content can go here
          ],
        ),
      ],
    );
  }
}
