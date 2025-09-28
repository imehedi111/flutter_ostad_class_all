import 'package:flutter/material.dart';

class GridViewClass1 extends StatelessWidget {
  const GridViewClass1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Grid Page',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal.shade400,
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: GridView.count(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 3,
      //     mainAxisSpacing: 3,
      //     children: List.generate(10, (index){
      //       return Card(
      //         elevation: 8,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(100),
      //         ),
      //         color: Colors.teal.shade300,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Icon(Icons.currency_bitcoin, color: Colors.white, size: 30,),
      //             Text('Cash out',
      //               style: TextStyle(
      //                 fontWeight: FontWeight.w500,
      //                 fontSize: 17,
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     }),
      //   ),
      // ),
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: GridView.builder(
                itemCount: 30,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        color: Colors.teal[100*((index%8)+1)],
                        // child: Center(child:Text('Item: $index')),
                        child: SizedBox(
                          height: 20,
                          child: ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, '/stack');
                          }, child: Text('Next')),
                        ),
                      ),
                    ],
                  );
                },
            ),
          ),
        ),
      ),
    );
  }
}
