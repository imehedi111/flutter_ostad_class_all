import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtil_Responsive extends StatelessWidget {
  const ScreenUtil_Responsive({super.key});

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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 200.w,
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),

              Row(
                children: [
                  Container(
                    width: 0.5.sw,
                    height: 200.h,
                    color: Colors.purple,
                    child: Center(
                      child: Text('My Actual width: ${0.5.sw}'
                        'My actual height: ${200.h}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 180,
                      maxHeight: 200,
                    ).hw,
                    color: Colors.orange,
                    child: Center(
                      child: Text('My Actual width: ${0.5.sw}'
                        'My actual height: ${200.h}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              // Container(
              //   height: 300,
              //   width: 500,
              //   color: Colors.blue,
              // ),
              Text('Hello Text 2',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('Hello Text',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.pinkAccent,
              ),


              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
