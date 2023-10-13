import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = '';
  String result = '';

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        input = '';
        result = '';
      } else if (buttonText == '=') {
        try {
          result = evalExpression(input);
        } catch (e) {
          result = 'Error';
        }
      } else {
        input += buttonText;
      }
    });
  }

  String evalExpression(String expression) {
    // Use a library or implement a math expression parser here
    return '123';  // Replace with actual evaluation logic
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              child: Text(
                input,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Text(
                result,
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildButton('/'),
            ],
          ),
          // Add more rows of buttons here
        ],
      ),
    );
  }

  Widget _buildButton(String buttonText) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(24),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          _buttonPressed(buttonText);
        },
      ),
    );
  }
}
