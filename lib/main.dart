import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primarySwatch: Colors.red),
      //darkTheme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "Rayean Mahmud",
                    style: TextStyle(fontSize: 16),
                  ),
                  accountEmail: Text("rayean.mahmud.arnob@gmail.com"),
                  currentAccountPictureSize: Size.square(45),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 110, 139, 178),
                    child: Text(
                      "R",
                      style: TextStyle(
                        color: Color.fromARGB(255, 56, 10, 10),
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('My Profile'),
                leading: const Icon(Icons.person),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Edit profile'),
                leading: const Icon(Icons.edit),
                onTap: () {},
              ),
              ListTile(
                title: const Text('My course'),
                leading: const Icon(Icons.book),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text("Premium"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                  leading: const Icon(Icons.video_label),
                  title: const Text('Saved Videos'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                title: const Text('Logout'),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text(
            "Sample Text",
            style: TextStyle(
              color: Color.fromARGB(255, 31, 2, 2),
              fontSize: 24.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0, child: const Icon(Icons.add), onPressed: () {}),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {},
        ),
      ),
    );
  }
}
