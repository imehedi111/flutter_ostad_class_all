import 'package:flutter/material.dart';

class ExpandNew extends StatelessWidget {
  const ExpandNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal,
        title: Text('Responsive Design',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 20,
          //     itemBuilder: (context, index){
          //       return ListTile(
          //         title: Text(index.toString()),
          //       );
          //     },
          //   ),
          // ),

          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
          Flexible(
            flex: 3,
            child:Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 3,
            child:Container(
              color: Colors.orange,
            ),
          ),



        ],
      ),
    );
  }
}
