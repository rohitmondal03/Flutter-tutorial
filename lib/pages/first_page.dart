import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to 2nd page"),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => "/",
            //   ),
            // );
            Navigator.pushNamed(context, "/secondpage");
          },
        ),
      ),
    );
  }
}
