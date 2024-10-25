import 'package:flutter/material.dart';

class Allproject extends StatelessWidget {
  const Allproject({super.key});

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'All Project',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Card(
              color: Colors.red.shade400,
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assigment/images/t2.jpg'),
                ),
                title: Text(
                  'Technology Behind The BlockChain',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Project #1   See Project details',
                  style: TextStyle(color: Colors.white60),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
            const Card(
              color: Color.fromARGB(221, 35, 48, 71),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assigment/images/bc.jpg'),
                ),
                title: Text(
                  'Technology Behind The BlockChain',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                subtitle: Text(
                  'Project #1   See Project details',
                  style: TextStyle(color: Colors.white60),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
            Card(
              color: Color.fromARGB(221, 35, 48, 71),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assigment/images/b2.jpg'),
                ),
                title: Text(
                  'Technology Behind The BlockChain',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                subtitle: Text(
                  'Project #1   See Project details',
                  style: TextStyle(color: Colors.white60),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
