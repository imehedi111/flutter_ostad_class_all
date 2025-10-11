import 'package:flutter/material.dart';

class FavBtnClass1 extends StatefulWidget {
  const FavBtnClass1({super.key});

  @override
  State<FavBtnClass1> createState() => _FavBtnClass1State();
}

class _FavBtnClass1State extends State<FavBtnClass1> {
  bool isFav = false;
  bool isPasswordShow = false;

  toggleFav() {
    setState(() {
      isFav = !isFav;
    });
  }
  showPassword(){
    setState(() {
      isPasswordShow = !isPasswordShow;
    });
    //ey Future function er maddhome nicher kaj derite korte bola hoyse.............delayed function
    //
    Future.delayed(Duration(seconds: 2), (){
      setState(() {
        isPasswordShow = false;
      });
    });
    //
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    obscureText: !isPasswordShow,
                    decoration: InputDecoration(
                      prefixIcon: Checkbox(value: isPasswordShow, onChanged: (value){
                        setState(() {
                          // isPasswordShow = value ?? false;
                          showPassword();
                        });
                      }),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: showPassword,
                        icon:  Icon( isPasswordShow ? Icons.visibility : Icons.visibility_off),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.5),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3.5, color: Colors.green),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: toggleFav,
                color: isFav ? Colors.red : Colors.grey,
                icon: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border_outlined,
                  size: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
