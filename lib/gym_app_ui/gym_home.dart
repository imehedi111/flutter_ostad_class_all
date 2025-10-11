import 'package:flutter/material.dart';
import 'package:myapp4/gym_app_ui/workout_page.dart';

class GymHome extends StatelessWidget {
  const GymHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  foregroundDecoration: BoxDecoration(color: Colors.black54),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/hb.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BE HEALTHY',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        'BE STRONGER',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        'BE YOURSELF',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          bottom: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Flexible(
                              flex: 1,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.fromHeight(50),
                                  backgroundColor: Color(0xFFf5ff41),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkoutPage()));
                                },
                                child: Text('Join Now',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.fromHeight(50),
                                  backgroundColor: Color.fromRGBO(41, 41, 43, 0.9),
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkoutPage()));
                                },
                                child: Text('Log In',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
