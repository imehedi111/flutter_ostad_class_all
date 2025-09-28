import 'package:flutter/material.dart';

class UserLoginMyApp extends StatelessWidget {
  const UserLoginMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('BD Service - Login',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.network('https://static.vecteezy.com/system/resources/previews/050/980/818/non_2x/3d-young-man-working-on-laptop-while-login-on-website-illustration-png.png',
                  width: 300,
                  ),
          
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('LOGIN NOW!',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                  child:Column(
                    children: [
                      TextFormField(
                        maxLength: 11,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.teal,
                          ),
                          helperText: 'Type Your Phone Number',
                          helperStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(Icons.phone,
                            size: 30,
                            color: Colors.teal,
                          ),
                          suffixIcon: Icon(Icons.arrow_back,
                            size: 30,
                            color: Colors.teal,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 2.5,
                            )
                          )
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        maxLength: 8,
                        obscureText: true,
                        obscuringCharacter: '#',
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.teal,
                          ),
                          helperText: 'Type Your Password',
                          helperStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(Icons.key,
                            size: 30,
                            color: Colors.teal,
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye,
                            size: 30,
                            color: Colors.teal,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 2.5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsetsGeometry.all(13),
                        ),
                          onPressed: (){},
                          child:Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('LOG IN',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Icon(Icons.door_front_door,
                                size: 24,
                              ),
                            ],
                          )),
                    ],
                  ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/travel');
              }, child: Text('Next Page')),
            ],
          ),
        ),
      ),
    );
  }
}
