import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopUiPractice1 extends StatelessWidget {
  const ShopUiPractice1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //top section design start here.....................top section
        child: Column(
          children: [
            Container(
              width: 1.sw,
              height: 130.h,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu, size: 25, color: Colors.white),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Your Location', style: TextStyle(color: Colors.white,fontSize: 18,),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on_outlined,size: 25,color: Colors.white,),
                              Text('Gazipur,Bangladesh', style: TextStyle(color: Colors.white,fontSize: 18,),),
                              Icon(Icons.keyboard_arrow_down_outlined,size: 25,color: Colors.white,),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.conveyor_belt,
                          size: 25,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
