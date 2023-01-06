
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var num1, num2, sum;
  TextEditingController t = TextEditingController();
  TextEditingController t1 = TextEditingController();
  void _add() {
    num1 = int.parse(t.text);
    num2 = int.parse(t1.text);
    setState(() {
      sum = num1 + num2;
    });
  }

  void sub() {
    num1 = int.parse(t.text);
    num2 = int.parse(t1.text);
    setState(() {
      sum = num1 - num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 108, 172),
        title: const Text(
          "Calculator"
          ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: "Введите число"
              ),
            controller: t,
            keyboardType: TextInputType.number,
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: "Введите число"
              ),
            controller: t1,
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
            onPressed: _add,
            child: const Text(
              "+"
              ),
          ),
          ElevatedButton(
            onPressed: sub,
            child: const Text(
              "-"
              ),
              
          ),
          const Text(
            "=",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold
              ),
          ),
          Text(
            "${sum ?? 0}",
            style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold
              ),
          ),
        ],
      ),
    );
  }
}

  


