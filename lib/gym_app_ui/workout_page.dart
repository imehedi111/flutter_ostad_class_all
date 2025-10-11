import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

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
                      image: AssetImage('asset/bn2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 60,
                  child: SizedBox(
                    child: IconButton(
                      style: ElevatedButton.styleFrom(
                        // minimumSize: Size.fromHeight(50),
                          backgroundColor: Color.fromRGBO(41, 41, 43, 0.9),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.only(
                            top: 7,
                            bottom: 7,
                            left: 7,
                            right: 7,
                          )
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back,
                        color: Color(0xFFf5ff41),
                        size: 25,
                      ),
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
                        'Cardio workout',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                      //body dimension buttons here................kcal and min
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 10,
                          children: [
                            ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(41, 41, 43, 1),
                                  foregroundColor: Colors.white,
                                  // visualDensity: VisualDensity(horizontal: -2, vertical: 1),
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 8,
                                    bottom: 8,
                                  ),

                                ),
                                onPressed: (){},
                                icon: Icon(Icons.bolt,
                                  size: 23,
                                ),
                                label: Transform.translate(
                                  offset: Offset(-10, 0),
                                  child: Text('420 Kcal',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                            ),
                            ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(41, 41, 43, 1),
                                  foregroundColor: Colors.white,
                                  // visualDensity: VisualDensity(horizontal: -2, vertical: 1),
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 8,
                                    bottom: 8,
                                  ),

                                ),
                                onPressed: (){},
                                icon: Icon(Icons.timer,
                                  size: 20,
                                ),
                                label: Transform.translate(
                                  offset: Offset(-5, 0),
                                  child: Text('35 min',
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
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 0,
                          children: [
                            Flexible(
                              flex: 6,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size.fromHeight(50),
                                  backgroundColor: Color(0xFFf5ff41),
                                ),
                                onPressed: () {},
                                child: Text('Start Workout',
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
                              child: Container(
                                height: 10,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xFFf5ff41),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Transform.translate(
                                offset: Offset(-10, 0),
                                child: Container(
                                  padding: EdgeInsets.all(7),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFf5ff41),
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: IconButton(
                                    style: ElevatedButton.styleFrom(
                                      // minimumSize: Size.fromHeight(50),
                                      backgroundColor: Color.fromRGBO(41, 41, 43, 0.9),
                                      foregroundColor: Colors.white,
                                      padding: EdgeInsets.only(
                                        top: 7,
                                        bottom: 7,
                                        left: 7,
                                        right: 7,
                                      )
                                    ),
                                    onPressed: () {},
                                    icon: Icon(Icons.play_arrow,
                                      color: Color(0xFFf5ff41),
                                      size: 25,
                                    ),
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
