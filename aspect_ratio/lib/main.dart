import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: const Text(
            "Aspect Ratio Demo",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
            child: Image.network(
              "https://g2.img-dpreview.com/81C81CB44922409EA3C99FA3E42369CD.jpg",
            ),
          ),
        ),
      ),
    );
  }
}