import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Drawer(
      child: Container(
        color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.02),
              Image(
                image: const AssetImage('assigment/images/ad.png'),
                height: height * 0.05,
                width: width * 0.06,
              ),
              const Divider(),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    backgroundImage: AssetImage('assigment/images/d.jpg'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Pooja Mishra',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: height * 0.01),
                      OutlinedButton(
                          onPressed: () {}, child: const Text('Admin')),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  const Divider()
                ],
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home', style: TextStyle(fontSize: 14)),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Employees', style: TextStyle(fontSize: 14)),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: const Text('Attendance', style: TextStyle(fontSize: 14)),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.analytics_outlined),
                title: const Text('Summary', style: TextStyle(fontSize: 14)),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info_outline_rounded),
                title:
                    const Text('Information', style: TextStyle(fontSize: 14)),
                onTap: () {},
              ),
              ListTile(
                trailing: const Icon(Icons.add),
                title: const Text(
                  'Workspaces',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
              ListTile(
                trailing: const Icon(Icons.keyboard_arrow_down),
                title: const Text('Adstacks', style: TextStyle(fontSize: 14)),
                onTap: () {},
              ),
              ListTile(
                trailing: const Icon(Icons.keyboard_arrow_down),
                title: const Text('Finance', style: TextStyle(fontSize: 14)),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings', style: TextStyle(fontSize: 14)),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 14),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
