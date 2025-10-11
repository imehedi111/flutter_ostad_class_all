import 'package:flutter/material.dart';
class StlessStfullClass1 extends StatefulWidget {
  const StlessStfullClass1({super.key});

  @override
  State<StlessStfullClass1> createState() => _StlessStfullClass1State();
}

class _StlessStfullClass1State extends State<StlessStfullClass1> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(num.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 60,
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    IconButton(onPressed: (){
                      setState(() {
                        num++;
                      });
                      print('Num=== $num');
                    }, icon: Icon(Icons.add, size: 40,)),
                    Spacer(),
                    IconButton(onPressed: (){
                      setState(() {
                        num--;
                      });
                      print('Num=== $num');
                    }, icon: Icon(Icons.remove,size: 40,)),
                    Spacer(),
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}
