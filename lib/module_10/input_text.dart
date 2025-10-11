import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController countryCodeController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: Text(
          'User Input Form',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 90,
                  child: IntlPhoneField(
                    controller: countryCodeController,
                    initialCountryCode: 'BD',
                    flagsButtonPadding: EdgeInsets.zero,
                    flagsButtonMargin: EdgeInsets.zero,
                    showCountryFlag: true,
                    showDropdownIcon: false,
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5, width: 5),
                Container(
                  width: 275,
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    maxLength: 11,
                    cursorColor: Colors.pink.shade300,
                    decoration: InputDecoration(
                      hintText: 'Enter Phone Number',
                      hintStyle: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 12,
                      ),
                      helperText: 'Put Your Running Number',
                      helperStyle: TextStyle(fontSize: 10),
                      labelText: 'Phone',
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        size: 18,
                        color: Colors.purpleAccent,
                      ),
                      suffixIcon: Icon(
                        Icons.arrow_left,
                        color: Colors.purpleAccent,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purpleAccent,
                          width: 2.0,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.purple.shade50,
                      contentPadding: EdgeInsets.all(5),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: 370,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                cursorColor: Colors.pink.shade300,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 12,
                  ),
                  helperText: 'Put Your Password',
                  helperStyle: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 10,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 18,
                    color: Colors.purpleAccent,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.purpleAccent,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purpleAccent,
                      width: 2.0,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.purple.shade50,
                  contentPadding: EdgeInsets.all(5),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 370,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {
                  print(
                    'Phone Number is: ${countryCodeController.text} ${phoneController.text}',
                  );
                  print('Password Is : ${passwordController.text}');

                  phoneController.clear();
                  passwordController.clear();
                  countryCodeController.clear();
                },
                child: Text('Log In', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
