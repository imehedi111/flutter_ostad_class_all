import 'package:flutter/material.dart';

class numberButton extends StatelessWidget {
  String text;
  Color ? color;
  //void call back neoa hoy onclick onno page theke kisu ante......voidcallback..//
  final VoidCallback onClick;

  numberButton({
    super.key,
    required this.text,
    required this.onClick,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color ?? Colors.grey[800],
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
                top: 20,
              ),
              elevation: 10,
              shadowColor: Colors.grey.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
          ),
          onPressed: onClick,
          child: Text(
            text, //text var..
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}