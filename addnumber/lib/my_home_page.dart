import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentValue = 0;

  void addNumber() {
    currentValue++;
    setState(() {});
  }

  void clearNumber() {
    currentValue--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return _MyProjeScaffold(context);
  }

  Scaffold _MyProjeScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Change Number App',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: _MyColumn(context),
    );
  }

  Column _MyColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('My Number  : $currentValue',
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        const SizedBox(height: 50),
        _MyRow()
      ],
    );
  }

  Row _MyRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _MyElevationAddButtom(),
        _MyElevaionClearButtom(),
      ],
    );
  }

  ElevatedButton _MyElevaionClearButtom() {
    return ElevatedButton(
      onPressed: () {
        if (currentValue > 0) {
          clearNumber();
        }
      },
      child: Icon(Icons.delete),
    );
  }

  ElevatedButton _MyElevationAddButtom() {
    return ElevatedButton(
      onPressed: () {
        addNumber();
      },
      child: Icon(Icons.add),
    );
  }
}
