import 'package:flutter/material.dart';

class top_destination_part extends StatelessWidget {
  final String img, title;
  const top_destination_part({
    super.key, required this.img, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 275,
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.4,
          ),
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  Container(
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(img)),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    bottom: 15,
                    child: Text(title,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}