import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  const NewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Button Groups',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),

            GestureDetector(
              onDoubleTap: (){
                print('It is double tap');
              },
              onLongPress: (){
                print('It is long press');
              },
              onTap: (){
                print('Taped On my Text');
              },
              child: Text('This is Clicable Text',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Colors.red,
                ),
              ),
            ),

            SizedBox(height: 50,),

            InkWell(
              onTap: (){
                print('My tap on text');
              },
              child: Text('This is 2nd Clicable Text',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Colors.red,
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: (){
        print('Click on ADD');
      }, child: Icon(Icons.add),),
    );
  }
}
