import 'package:flutter/material.dart';
import 'package:myapp4/assaignment_ui/widgets/product_boxes.dart';
import 'package:myapp4/assaignment_ui/widgets/search_top_sec.dart';
import 'package:myapp4/assaignment_ui/widgets/top_destination_sec.dart';
import 'package:myapp4/module_11/widgets/country_widget.dart';

class AssignmentUi extends StatelessWidget {
  const AssignmentUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          'UI Assignment 1',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            search_sec(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Container(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text(
                  'Top Destinations',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 5,
                bottom: 5,
              ),
              child: top_destination_part(
                img:
                    'https://media.istockphoto.com/id/635758088/photo/sunrise-at-the-eiffel-tower-in-paris-along-the-seine.jpg?s=612x612&w=0&k=20&c=rdy3aU1CDyh66mPyR5AAc1yJ0yEameR_v2vOXp2uuMM=',
                title: 'Paris',
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Container(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text(
                  'Trending Packages',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            products_sec(
              placeimg: 'https://cdn.britannica.com/74/250074-050-DD110B36/IM-Pei-designed-pyramid-Louvre-Paris-France.jpg',
              price: '567',
              placename: 'Britannica',
              daycount: '5',
              nightscount: '6',
            ),
            products_sec(
              placeimg: 'https://www.authentic-europe.com/travel-tips/ten-of-the-best-free-things-to-do-in-paris/_/image/d0da2e14-4894-481f-9ef8-e3694595dbfa:eaa84db9c17c2c56f96758eab5836927b74f62dd/width-768/riverside-of-the-seine-river-in-paris-photo-rudybalasko-via-canva',
              price: '787',
              placename: 'Authentic Europe',
              daycount: '3',
              nightscount: '5',
            ),
            products_sec(
              placeimg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrPG84QDsX2WpK9bELRgujbQ1jDCLbcDt0wA&s',
              price: '3985',
              placename: 'Dubai Somewhere',
              daycount: '4',
              nightscount: '7',
            ),
            products_sec(
              placeimg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbNAulfZ-wIXKBQdKuzNVettqn8j7axtWncQ&s',
              price: '678',
              placename: 'Somewhere in Italy',
              daycount: '8',
              nightscount: '9',
            ),
            products_sec(
              placeimg: 'https://www.planetware.com/wpimages/2019/02/germany-best-places-to-visit-cologne.jpg',
              price: '789',
              placename: 'PlanetWare in Germany',
              daycount: '3',
              nightscount: '4',
            ),
            products_sec(
              placeimg: 'https://d1bv4heaa2n05k.cloudfront.net/other%2F3371a5d4-3048-4e69-8cfc-ffb5fe32086e_1465222073207%2F1465222134840-shutterstock_343535819.jpg',
              price: '5645',
              placename: 'Somewhere in Poland',
              daycount: '6',
              nightscount: '7',
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/grid');
            }, child: Text("Next Page")),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
