import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App Design Here',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('App Icons: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.home,
                        color: Colors.indigo,
                        size: 34,
                      ),
                      Icon(Icons.add_shopping_cart_outlined,
                        color: Colors.white,
                        size: 34,
                      ),
                      ElevatedButton(
                          onPressed: (){},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text('Cotnact'),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Text('My Name Is Mehedi',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 34,
        //         color: Colors.red,
        //       ),
        //     ),
        //
        //   ],
        // ),
      ),
    );
  }
}
