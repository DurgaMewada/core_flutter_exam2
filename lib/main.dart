import 'package:core_flutter_exam2/Components/DetailPage/Detail.dart';
import 'package:flutter/material.dart';

import 'Components/AddPage/Add.dart';
import 'Components/HomePage/Home.dart';
void main()
{
  runApp(MyApp(),);
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
      initialRoute: '/',
      routes: {
        '/':(context)=> Add(),
        '/home':(context)=> Home(),
        '/detail':(context)=> Detail(),
      },
    );
  }
}
