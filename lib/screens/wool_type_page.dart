import 'package:flutter/material.dart';

class WoolTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 74, 84, 193), 
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 62, 77, 234), Color.fromARGB(255, 110, 120, 233),],
          ),
        ),
        child: Center(
          child: Text( 
            'Know your wool',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}