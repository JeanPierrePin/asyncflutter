import 'package:flutter/material.dart';
import 'services/mockapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Async',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 7, 144, 124),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 11, 92, 86),
        ),
      ),
      home: const FlutterAsync(title: 'Flutter Async'),
    );
  }
}

class FlutterAsync extends StatefulWidget {
  const FlutterAsync({super.key, required this.title});

  final String title;

  @override
  State<FlutterAsync> createState() => _FlutterAsyncState();
}

class _FlutterAsyncState extends State<FlutterAsync> {
//variables
  int first_icon = 0;
  int first_icon_time = 0;
  double first_icon_with = 0;
  int first_icon_text = 0;

  int second_icon = 0;
  int second_icon_time = 0;
  double second_icon_with = 0;
  int second_icon_text = 0;

  int third_icon = 0;
  int third_icon_time = 0;
  double third_icon_with = 0;
  int third_icon_text = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Ink(
              decoration: ShapeDecoration(
                color: Colors.green.shade900,
                shape: const CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.flash_on,
                  color: Colors.white,
                ),
                iconSize: 50.0,
                onPressed: () async {
                  setState(() {
                    first_icon_with = 300;
                    first_icon_time = 1;
                  });
                  first_icon = await MockApi().getFerrariInteger();
                  setState(() {
                    first_icon_text = first_icon;
                    first_icon_time = 0;
                    first_icon_with = 0;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AnimatedContainer(
                  width: first_icon_with,
                  height: 15,
                  decoration: BoxDecoration(color: Colors.green.shade900),
                  duration: Duration(seconds: first_icon_time)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                first_icon.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.orange.shade700,
                shape: const CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.airport_shuttle,
                  color: Colors.white,
                ),
                iconSize: 50.0,
                onPressed: () async {
                  setState(() {
                    second_icon_with = 300;
                    second_icon_time = 1;
                  });
                  second_icon = await MockApi().getFerrariInteger();
                  setState(() {
                    second_icon_text = second_icon;
                    second_icon_time = 0;
                    second_icon_with = 0;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AnimatedContainer(
                  width: second_icon_with,
                  height: 15,
                  decoration: BoxDecoration(color: Colors.orange.shade700),
                  duration: Duration(seconds: second_icon_time)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                second_icon.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.redAccent.shade700,
                shape: const CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.directions_walk,
                  color: Colors.white,
                ),
                iconSize: 50.0,
                onPressed: () async {
                  setState(() {
                    third_icon_with = 300;
                    third_icon_time = 1;
                  });
                  third_icon = await MockApi().getFerrariInteger();
                  setState(() {
                    third_icon_text = third_icon;
                    third_icon_time = 0;
                    third_icon_with = 0;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AnimatedContainer(
                  width: third_icon_with,
                  height: 15,
                  decoration: BoxDecoration(color: Colors.redAccent.shade700),
                  duration: Duration(seconds: third_icon_time)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                third_icon.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
