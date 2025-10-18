import 'package:flutter/material.dart';

class ClipPathWork extends StatefulWidget {
  const ClipPathWork({super.key});

  @override
  State<ClipPathWork> createState() => _ClipPathWorkState();
}

class _ClipPathWorkState extends State<ClipPathWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ClipPath(
        clipper: CustomClipPath(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[400],
            image: DecorationImage(image: AssetImage('asset/bn2.png'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )
          ),
          child: const Center(
            child: Text('Clip Path', style: TextStyle(fontSize: 30, color: Colors.white),),
          ),
        ),
      ),
      
      ///bellow codes are for inner card design..........inner curve.//
      // appBar: AppBar(
      //   backgroundColor: Colors.teal,
      //   centerTitle: true,
      //   title: Text(
      //     'Clip Path Practise',
      //     style: TextStyle(
      //       fontSize: 22,
      //       color: Colors.white,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(18.0),
      //   child: ClipPath(
      //     clipper: MyCustomShapes(),
      //     child: Container(
      //       height: 400,
      //       width: double.infinity,
      //       color: Colors.blue,
      //     ),
      //   ),
      // ),
    );
  }
}

///bellow class is for customshope new style.................new style//
///
class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double w = size.width;
    double h = size.height;

    final path = Path();


    path.lineTo(w, 0);
    path.lineTo(0, h);
    path.close();


    ///nicher code hosse middle piramid design korar jonno.....
    ///peramid create.....
    // path.lineTo(0, h-100); //bottom left corner....//
    // path.lineTo(w/2, h); //peak at the middle bottom....//middle bottom.
    // path.lineTo(w, h-100); //bottom right corner....//
    // path.lineTo(w, 0); //top right corner....//
    // path.close(); //close the path...//


    ///nicher code hosse wave curve create korar jonno.....
    ///wave curve create.....
    // path.lineTo(0, h-50); //start from top left dot corner....//
    // path.quadraticBezierTo(w/4, h, w/2, h-50); //first wave created...//
    // path.quadraticBezierTo(3*w/4, h-100, w, h-50);//second wave created...//
    // path.lineTo(w, 0);
    // path.close(); //close the path...//


    ///nicher clip path code is for straight inner carve with container....
    ///inner curve full width.
    // path.lineTo(0, h); //move to bottom left corner of the container...
    // path.quadraticBezierTo(w/2, h-100, w, h); //draw a smooth curve from the bottom-left
    // //to the bottom-right, with a control point
    // //at (w/2, h-100), creating a dip in the middle.
    // path.lineTo(w, 0); //draw a straight line to the top-right corner.
    // path.close(); //close the path by connecting the current point to the straight point.

    return path;
  }

  @override
  bool shouldReclip (CustomClipper<Path> oldClipper){
    return false;
  }
}
///
///

///bellow code is for normal carve code..................//
// class MyCustomShapes extends CustomClipper<Path>{
//   @override
//   Path getClip(Size size) {
//
//     Path path = Path();
//
//
//     final width = size.width; //500
//     final height = size.height; //300
//
//
//
//     ///bellow codes are for inner carve design.
//     // //first line
//     // path.lineTo(0, height - 100);
//     //
//     // ///first curve...
//     // // path.quadraticBezierTo(20, height, width/2, height);
//     // path.quadraticBezierTo(20, height - 200, width/2, height - 200);
//     //
//     // ///2nd curve...
//     // // path.quadraticBezierTo(width - 20, height -200, width, height - 100);
//     //
//     // //second line
//     // path.lineTo(width, 0);
//
//
//
//
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
//
//
//
// }
