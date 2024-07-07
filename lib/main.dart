import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/pages/first_page.dart';
import 'package:myapp/pages/second_page.dart';
import 'package:myapp/pages/setting_page.dart';

void main() {
  // runApp(MyApp());
  // runApp(MyColumnsAndRows());
  // runApp(MyListView());
  // runApp(MyGridView());
  // runApp(MyStack());
  // runApp(MyGesture());
  runApp(Navigation());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange[200],
        appBar: AppBar(
          title: const Text(
            "App Bar !!",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            // padding: EdgeInsets.symmetric(horizontal: 23, vertical: 23),
            // padding: EdgeInsets.only(top: 20),
            // child: const Text(
            //   "Rohit bhai",
            //   style: TextStyle(
            //     color: Colors.black87,
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            child: const Icon(
              Icons.favorite_outline,
              color: Colors.white,
              size: 64,
            ),
          ),
        ),
      ),
    );
  }
}

// Widgets => columns and rows
class MyColumnsAndRows extends StatelessWidget {
  const MyColumnsAndRows({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.purple,
        //   centerTitle: true,
        //   title: const Text(
        //     "Columns and Rows",
        //     style: TextStyle(
        //       color: Colors.white,
        //     ),
        //   ),
        // ),

        // body: Column(
        // body: ListView(
        //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   // crossAxisAlignment: CrossAxisAlignment.center,
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     // 1st BOX
        //     // Expanded(
        //       Container(
        //           height: 300,
        //            width: 300,
        //           color: Colors.deepPurple[200]),
        //     // ),

        //     // 2nd BOX
        //     // Expanded(
        //       // flex: 2,
        //       Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.deepPurple[300],
        //       ),
        //     // ),

        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.deepPurple[400],
        //     )

        //     // 3rd BOX
        //     // Expanded(
        //     //   child: Container(
        //     //       width: 200,
        //     //       // height: 200,
        //     //       color: Colors.deepPurple[400]),
        //     // ),
        //   ],
        // ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => ListTile(
            title: Text(index.toString()),
          ),
        ),
      ),
    );
  }
}

// LISTVIEW
class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => ListTile(
                  title: Text(
                    index.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
      ),
    );
  }
}

// GRIDVIEW
class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemCount: 64,
          itemBuilder: (context, index) => Container(
            color: Colors.deepPurple,
            margin: EdgeInsets.all(2),
          ),
        ),
      ),
    );
  }
}

// STACK
class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple[200],
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[300],
            )
          ],
        ),
      ),
    );
  }
}

// GESTURE
class MyGesture extends StatelessWidget {
  const MyGesture({super.key});

  void userTapped() {
    print("Tapped !!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              userTapped();
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amberAccent,
              child: const Center(child: Text("Tap me !!")),
            ),
          ),
        ),
      ),
    );
  }
}

// Navigation and Routes
class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => const FirstPage(),
        "/secondpage": (context) => const SecondPage(),
        "/settingpage": (context) => const SettingPage(),
      },
    );
  }
}



// FUNCTIONS

// void greet(String name) {
//   print("Hello, " + name);
// }

// int addNums(int a, int b) {
//   return a + b;
// }

  /*

  Math operators
   1 + 1
   1 - 2
   2 * 3
   2 / 3
   2 % 3 
   ++ ==> increment by 1
   -- ==> decrement by 1

  Comparison Operators
   5 == 5
   5 != 4
   3 < 4
   4 > 3
  
  Logical Operator
   && AND op
   || OR op

  */

  /*

    if(age > 23) {
      print("Your a adult");
    } else if(age < 22) {
      print("Hehe")
    } else {
      print("Not an adult");
    }


    switch(age) {
      case: 23:
        print("Age 23");
        break;
      case: 44:
        print("Age 23");
        break;
      default: 
        print("Hello")
    }


    for(int i = 0; i<5; i++){
      print(i);

      if(i == 6) {
        continue;  ==> will skip this step
        break;  ==> will go out of the loop
      }
    }


    while(age < 23) {
      print(age);
    }

    FUNCTIONS/METHODS
    void == returns nothing

  */

  /* 
    DATA STRUCTURES

    List numbers = [1, 2, 3];
    --OR--
    List<int> numbers = [1, 2, 3];
    print(numbers[0]);

    List<String> name = ["Rohit", "Mondal"];
    for(int i=0; i< name.length; i++) {
      print(name[i]);
    }

    // Set => unique elements stored
    Set<String> mySet = {"Rohit", "Mondal"}

    // Map => key-value pairs
    Map user = {
      "name": "Rohit",
      "age": 24,
      "isEmployee": true,
    }

  */