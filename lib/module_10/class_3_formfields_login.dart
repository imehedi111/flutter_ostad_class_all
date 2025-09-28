import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneContorl = TextEditingController();
    TextEditingController passwordControl = TextEditingController();

    final _formkey = GlobalKey<FormState>();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('NEW LOGIN FORM',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Login with Phone and Password',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.teal,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Form(
              key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phoneContorl,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        labelText: 'Your Phone',
                        prefixIcon: Icon(
                          Icons.call,
                          color: Colors.teal,
                        ),
                        suffixIcon: Icon(
                          Icons.verified_user,
                          color: Colors.teal,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.greenAccent,
                            width: 2,
                          ),
                        ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please Enter Your Phone Number';
                        }else if(value.length != 11){
                          return 'Please enter your correct phone number';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: passwordControl,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Your Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.teal,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.teal,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.greenAccent,
                            width: 2,
                          ),
                        ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please Enter Password';
                        }else if(value.length < 8){
                          return 'Password must be at lest 8 Characters';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                          onPressed: (){

                          if(_formkey.currentState!.validate()){
                            print(phoneContorl.text);
                            print(passwordControl.text);

                            phoneContorl.clear();
                            passwordControl.clear();
                          }

                          },
                          child: Text('Log In',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
            ),

            SizedBox(height: 30,),

            Container(
              alignment: Alignment.center,
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(
                  width: 5,
                  color: Colors.orange,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(-15, 15),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(15, -15)
                  ),
                ],
              ),
              child: Text('This is Container',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 40,),
            Card(
              color: Colors.teal,
              borderOnForeground: true,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('This Is Card'),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
