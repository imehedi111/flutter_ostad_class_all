import 'package:flutter/material.dart';
import 'package:myapp4/module_15/widgets/numbersButton.dart';

class CalculatorClass3 extends StatefulWidget {
  const CalculatorClass3({super.key});

  @override
  State<CalculatorClass3> createState() => _CalculatorClass3State();
}

class _CalculatorClass3State extends State<CalculatorClass3> {
  String _output = '0';
  String _input = '0';
  String _ope = '';
  double num1 = 0;
  double num2 = 0;

  //ey methode er maddhome number button theke value nebo............value button..//
  void buttonPress(String value) {
    print('value = $value');

    setState(() {
      if (value == 'AC') {
        _output = '0';
        _input = '0';
        _ope = '';
        num1 = 0;
        num2 = 0;
      } else if (value == '=') {
        num2 = double.parse(_input);
        if (_ope == '+') {
          _output = (num1 + num2).toString();
        } else if (_ope == '-') {
          _output = (num1 - num2).toString();
        } else if (_ope == '*') {
          _output = (num1 * num2).toString();
        } else if (_ope == '÷') {
          _output = num2 != 0
              ? (num1 / num2).toString()
              : 'Can Not devided by zero';
        } else if (_ope == '%') {
          _output = num2 != 0
              ? (num1 % num2).toString()
              : 'Can not Devide by zero';
        }
      } else if (['+', '-', '*', '÷', '%'].contains(value)) {
        _ope = value;
        num1 = double.parse(_input);
        _input = '';
      } else if (_input.isNotEmpty && value == '←') {
        _input = _input.substring(0, _input.length - 1);
      } else {
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output == _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //here start calculation part of the calculator.........upper part..//
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.bottomRight,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    (_ope.isNotEmpty || _input.isNotEmpty)
                        ? Text(
                            '$num1 $_ope $_input',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          )
                        : SizedBox(),
                    SizedBox(height: 10),
                    Text(
                      _output,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //here start calculator buttons part...................Buttons part..
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF24272e),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 10,
                bottom: 20,
                top: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      numberButton(
                        text: 'AC',
                        onClick: () => buttonPress('AC'),
                      ),
                      numberButton(text: '%', onClick: () => buttonPress('%')),
                      numberButton(text: '←', onClick: () => buttonPress('←')),
                      numberButton(
                        text: '÷',
                        onClick: () => buttonPress('÷'),
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      numberButton(text: '7', onClick: () => buttonPress('7')),
                      numberButton(text: '8', onClick: () => buttonPress('8')),
                      numberButton(text: '9', onClick: () => buttonPress('9')),
                      numberButton(
                        text: '*',
                        onClick: () => buttonPress('*'),
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      numberButton(text: '4', onClick: () => buttonPress('4')),
                      numberButton(text: '5', onClick: () => buttonPress('5')),
                      numberButton(text: '6', onClick: () => buttonPress('6')),
                      numberButton(
                        text: '−',
                        onClick: () => buttonPress('-'),
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      numberButton(text: '1', onClick: () => buttonPress('1')),
                      numberButton(text: '2', onClick: () => buttonPress('2')),
                      numberButton(text: '3', onClick: () => buttonPress('3')),
                      numberButton(
                        text: '+',
                        onClick: () => buttonPress('+'),
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      numberButton(
                        text: '00',
                        onClick: () => buttonPress('00'),
                      ),
                      numberButton(text: '0', onClick: () => buttonPress('0')),
                      numberButton(text: '.', onClick: () => buttonPress('.')),
                      numberButton(
                        text: '=',
                        onClick: () => buttonPress('='),
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
