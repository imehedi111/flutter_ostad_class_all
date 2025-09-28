import 'package:flutter/material.dart';
import 'package:myapp4/module_11/widgets/country_widget.dart';
import 'Test.dart';

class Module11Stack extends StatelessWidget {
  const Module11Stack({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.purpleAccent,
                  height: 200,
                  width: 200,
                ),
                Positioned(
                  left: 80,
                  top: 0,
                  right: 0,
                  bottom: 80,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.greenAccent,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 80,
                  right: 80,
                  bottom: 0,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage('https://i.pinimg.com/736x/9c/f4/da/9cf4daa1185e463bd67c6ac53de356be.jpg'),
                ),
                Positioned(
                  right: 23,
                  bottom: 23,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3,),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryWidget(img: 'https://preview.redd.it/tjmw7w82aa781.jpg?width=959&format=pjpg&auto=webp&s=f93ae5b43c073374730db1dad9f7950749c48305', title: 'Bangladesh', rating: '5',),
                  CountryWidget(img: 'https://img.freepik.com/premium-photo/aerial-view-illuminated-buildings-city-night_1048944-5722629.jpg?semt=ais_hybrid&w=740&q=80', title: 'Dubai', rating: '4.5',),
                  CountryWidget(img: 'https://images.pexels.com/photos/777059/pexels-photo-777059.jpeg?cs=srgb&dl=pexels-kin-pastor-251088-777059.jpg&fm=jpg', title: 'Singapore', rating: '5',),
                  CountryWidget(img: 'https://dohanews.co/wp-content/uploads/2022/07/things-to-do-in-Doha-Qatar.jpeg', title: 'Qatar', rating: '4.5',),
                ],
              ),
            ),
            ElevatedButton(onPressed: (){

              Navigator.pushNamed(context, '/home');

              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Test1(name: 'Mehedi Hasan',)));
            }, child: Text('Next Page')),

            // ElevatedButton(onPressed: (){
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Test1()));
            // }, child: Text('Next Page')),

            // ElevatedButton(onPressed: (){
            //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Test1()), (rout)=>false);
            // }, child: Text('Next Page')),
          ],
        ),
      ),
      
    );
  }
}


