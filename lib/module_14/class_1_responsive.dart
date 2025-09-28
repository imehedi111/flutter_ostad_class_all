import 'package:flutter/material.dart';
class Respon extends StatelessWidget {
  const Respon({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final bool isTablet = screenSize.width>600;
    final Orientation orientation = MediaQuery.of(context).orientation;
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Expanded(
              //   flex: 1,
              //   child: ListView.builder(
              //     physics: NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemCount: 20,
              //     itemBuilder: (context, index){
              //       return ListTile(
              //         title: Text(index.toString()),
              //       );
              //     },
              //
              //   ),
              // ),


              Text('Device in ${orientation} Mood',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.red,
                ),
              ),

              orientation == Orientation.landscape?
              Text('This is in Mood',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              ):SizedBox(height: 0,),

              orientation == Orientation.portrait ?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone_android, size: 50,),
                  Icon(Icons.tablet_android, size: 50,),
                  Icon(Icons.computer, size: 50,),
                  Icon(Icons.apple_outlined, size: 50,),
                ],
              ) :
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone_android, size: 50,),
                  Icon(Icons.tablet_android, size: 50,),
                  Icon(Icons.desktop_mac, size: 50,),
                  Icon(Icons.apple_outlined, size: 50,),
                ],
              ),

              SizedBox(height: 10,),
              Text('Fixed Size'),
              SizedBox(height: 10,),
              Container(
                width: 150,
                height: 100,
                color: Colors.blue,
                child: Text('150x100'),
              ),
              Text('Fixed Size'),
              SizedBox(height: 10,),
              AspectRatio(aspectRatio:21/9,
                child: Container(
                  color: Colors.red,
          
                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.purple,
                width: screenSize.width*0.7,
                height: screenSize.height*0.3,
              ),
              Text('My Test Responsive',
                style: TextStyle(
                  fontSize: screenSize.width>411 ? 40 : 20,
                  fontWeight: screenSize.width>400 ? FontWeight.w900 : FontWeight.w400,
                ),
              ),
              SizedBox(height: 10,),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  height: 60,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10,),
              Text('Adaptive Layout ${isTablet ? 'Tablet' : 'Mobile'}'
              ),
              isTablet ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone_android, size: 50,),
                  Icon(Icons.tablet_android, size: 50,),
                  Icon(Icons.laptop_chromebook, size: 50,),
                ],
              ):
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.phone_android, size: 50,),
                  Icon(Icons.tablet_android, size: 50,),
                  Icon(Icons.laptop_chromebook, size: 50,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
