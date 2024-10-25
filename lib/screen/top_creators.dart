import 'package:flutter/material.dart';

class TopCreators extends StatefulWidget {
  @override
  _TopCreatorsState createState() => _TopCreatorsState();
}

class _TopCreatorsState extends State<TopCreators> {
  // Define initial range values for the slider
  RangeValues _currentRangeValues = const RangeValues(0, 10);
  RangeValues _currentRangeValues2 = const RangeValues(0, 10);
  RangeValues _currentRangeValues3 = const RangeValues(0, 10);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Card(
      child: Container(
        height: height * 0.37,
        width: width * 0.3,
        decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
          color: Color.fromARGB(221, 35, 48, 71),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Top Creators',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Name',
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  'Artwork',
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  'Rating',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
            Card(
                color: const Color.fromARGB(221, 35, 48, 71),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assigment/images/a.jpg'),
                    ),
                    const Text(
                      '@maddilson',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    const Text(
                      '9021 ',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(
                      width: width * 0.09, // Adjust width as needed
                      child: RangeSlider(
                        values: _currentRangeValues,
                        min: 0,
                        max: 10,
                        //divisions: 10,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white30,

                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      ),
                    ),
                  ],
                )),
            Card(
                color: const Color.fromARGB(221, 35, 48, 71),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assigment/images/a2.jpg'),
                    ),
                    const Text(
                      '@kartwill',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    const Text(
                      '7032 ',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(
                      width: width * 0.09, // Adjust width as needed
                      child: RangeSlider(
                        values: _currentRangeValues2,
                        //min: 0,
                        max: 10,
                        //divisions: 10,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white30,

                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues2 = values;
                          });
                        },
                      ),
                    ),
                  ],
                )),
            Card(
                color: const Color.fromARGB(221, 35, 48, 71),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assigment/images/a.jpg'),
                    ),
                    const Text(
                      '@maddilson',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    const Text(
                      '9021 ',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(
                      width: width * 0.09, // Adjust width as needed
                      child: RangeSlider(
                        values: _currentRangeValues3,
                        //min: 0,
                        max: 10,
                        //divisions: 10,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white30,

                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues3 = values;
                          });
                        },
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
