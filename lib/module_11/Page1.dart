import 'package:flutter/material.dart';
import 'package:myapp4/module_11/Test.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: Text('Stack View Learing',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.greenAccent,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Page One'),
            // ElevatedButton(onPressed: (){
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Test1()));
            // }, child: Text('No Back')),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back')),
          ],
        ),
      ),
    );
  }
}
