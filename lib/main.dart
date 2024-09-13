import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EOS ToDoList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('EOS ToDoList'),
          leading: Icon(Icons.check_box_outlined),
        ),
        body: Container(
            height: 200,
            color: Colors.lightGreen.withOpacity(0.3),
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 10, color: Colors.grey)
                    ),
                  child: Center(
                    child: Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.grey
                    )
                  )
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("EOS"),
                    Text("우영균",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),),
                    Text("너무배고파요")
                  ],
                )
              ],
            )
        )
    );
  }
}


