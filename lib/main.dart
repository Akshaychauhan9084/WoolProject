import 'package:flutter/material.dart';
import 'package:project_sih/LoginUI/login_screen.dart';
import 'package:project_sih/screens/home_page.dart';
import 'package:project_sih/screens/home_page_all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color.fromARGB(255, 61, 71, 181), 
      ),
      home: LoginScreen(),
    );
  }
}

