import 'package:flutter/material.dart';
import 'package:myapp4/module_11/Page1.dart';

class Test1 extends StatelessWidget {
  final name;
  const Test1({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text('Stack View Learing',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test Page'),
            Text(name),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageOne()));
            }, child: Text('Page One')),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back')),
          ],
        ),
      ),
    );
  }
}
