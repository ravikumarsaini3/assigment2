import 'package:assigment/screen/allproject.dart';
import 'package:assigment/screen/genral.dart';
import 'package:assigment/screen/performance_chart.dart';

import 'package:assigment/screen/top_creators.dart';
import 'package:assigment/screen/top_rating_project.dart';
import 'package:flutter/material.dart';

import 'slidemenu.dart'; // import the viewmodel

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();

    // Fetch the projects when the dashboard is initialized
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Card(
          color: Colors.white60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Side Menu
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SideMenu(),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Top Bar
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black.withOpacity(.6)),
                              ),
                              SizedBox(
                                  width: width * 0.222,
                                  height: height * 0.06,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        filled: true,
                                        fillColor: Colors.black87,
                                        suffixIcon: const Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        ),
                                        hintText: 'Search',
                                        hintStyle: const TextStyle(
                                            color: Colors.white)),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TopRatingProject(),
                      ),
                      Row(
                        children: [
                          const Expanded(child: Allproject()),
                          SizedBox(
                              width: width * 0.01), // Add space between columns
                          Expanded(child: TopCreators())
                        ],
                      ),
                      SizedBox(
                          height: height *
                              0.02), // Add some spacing before analysis
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.25,
                          width: width * 0.6,
                          child:
                              const PerformanceChart(), // Replace with your Performance Analysis widget
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Right-side widgets (e.g., General info, calendar, etc.)
              SizedBox(
                  width: width * 0.25, child: const Expanded(child: Genral()))
            ],
          ),
        ),
      ),
    );
  }
}
