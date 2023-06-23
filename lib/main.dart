import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late TextEditingController _num1Controller;
  late TextEditingController _num2Controller;
  String _result = '';

  @override
  void initState() {
    super.initState();
    _num1Controller = TextEditingController();
    _num2Controller = TextEditingController();
  }

  @override
  void dispose() {
    _num1Controller.dispose();
    _num2Controller.dispose();
    super.dispose();
  }

  void _calculateSum() {
    setState(() {
      double num1 = double.parse(_num1Controller.text);
      double num2 = double.parse(_num2Controller.text);
      double result = num1 + num2;
      _result = result.toStringAsFixed(2);
    });
  }

  void _calculateSubtraction() {
    setState(() {
      double num1 = double.parse(_num1Controller.text);
      double num2 = double.parse(_num2Controller.text);
      double result = num1 - num2;
      _result = result.toStringAsFixed(2);
    });
  }

  void _calculateMultiplication() {
    setState(() {
      double num1 = double.parse(_num1Controller.text);
      double num2 = double.parse(_num2Controller.text);
      double result = num1 * num2;
      _result = result.toStringAsFixed(2);
    });
  }

  void _calculateDivision() {
    setState(() {
      double num1 = double.parse(_num1Controller.text);
      double num2 = double.parse(_num2Controller.text);
      double result = num1 / num2;
      _result = result.toStringAsFixed(2);
    });
  }

  void _calculateSine() {
    setState(() {
      double inputValue = double.parse(_num1Controller.text);
      double radians = inputValue * (pi / 180);
      double result = sin(radians);
      _result = result.toStringAsFixed(2);
    });
  }

  void _calculateCosine() {
    setState(() {
      double inputValue = double.parse(_num1Controller.text);
      double radians = inputValue * (pi / 180);
      double result = cos(radians);
      _result = result.toStringAsFixed(2);
    });
  }

  void _calculateTangent() {
    setState(() {
      double inputValue = double.parse(_num1Controller.text);
      double radians = inputValue * (pi / 180);
      double result = tan(radians);
      _result = result.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Primer número tomado para operación trigonométricas',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingresa el primer número',
              ),
            ),
            SizedBox(height: 32.0),
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingresa el segundo número',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('Suma'),
              onPressed: _calculateSum,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('Resta'),
              onPressed: _calculateSubtraction,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('Multiplicación'),
              onPressed: _calculateMultiplication,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('División'),
              onPressed: _calculateDivision,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('Seno'),
              onPressed: _calculateSine,
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Establece el color de fondo del botón
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('Coseno'),
              onPressed: _calculateCosine,
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Establece el color de fondo del botón
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('Tangente'),
              onPressed: _calculateTangent,
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Establece el color de fondo del botón
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'Resultado: $_result',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
