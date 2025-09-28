import 'package:flutter/material.dart';

class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Class 3',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://picsum.photos/250?image=9',
              width: 200,
              height: 200,
            ),
            Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              width: 200,
              height: 200,
            ),
            Image.asset('asset/logo1.png',
              width: 200,
              height: 200,
              alignment: AlignmentGeometry.center,
            ),
          ],
        ),
      ),
    );
  }
}
