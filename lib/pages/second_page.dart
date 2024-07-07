import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd Page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            const DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 48,
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, "/firstpage");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                Navigator.pushNamed(context, "/settingpage");
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          height: 200,
          width: 200,
          child: const Text(
            "Page 2",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
