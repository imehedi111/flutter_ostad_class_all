import 'package:flutter/material.dart';

class NewCntr extends StatelessWidget {
  const NewCntr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('New Container page',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: Colors.white,
        ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
