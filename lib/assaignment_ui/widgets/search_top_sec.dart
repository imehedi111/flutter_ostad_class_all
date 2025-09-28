import 'package:flutter/material.dart';

class search_sec extends StatelessWidget {
  const search_sec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://e0.pxfuel.com/wallpapers/457/359/desktop-wallpaper-moonlight-night-most-beautiful-places-in-world-at-night.jpg')),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 90,
          child: Text('Explore The World',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 30,
          width: 300,
          child: Form(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search Decoration',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                prefixIcon: Icon(Icons.search,
                  size: 28,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}