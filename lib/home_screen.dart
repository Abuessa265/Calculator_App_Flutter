import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numOneTEController = TextEditingController();
  final TextEditingController _numTwoTEController = TextEditingController();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Wrap(
          children: [
            Column(
              children: [
                TextField(
                  controller: _numOneTEController,
                  decoration: const InputDecoration(
                      hintText: 'Number One ', labelText: 'Number 1'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: _numTwoTEController,
                  decoration: const InputDecoration(
                      hintText: 'Number Two', labelText: 'Number 1'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 16,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        _add();
                      },
                      //onPressed: _add(),//onPressed eivabeu kora jai
                      icon: const Icon(Icons.add),
                      label: const Text('Add'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        _sub();
                      },
                      icon: const Icon(Icons.remove),
                      label: const Text('Sub'),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  spacing: 16,
                  alignment: WrapAlignment.start,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        _multiply();
                      },
                      icon: const Icon(Icons.star),
                      label: const Text('Multiply'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        _divide();
                      },
                      icon: const Icon(Icons.data_exploration_rounded),
                      label: const Text('Division'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Result: $_result',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _add() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne + numberTwo;
    setState(() {});
  }

  void _sub() {
    double numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numberOne - numberTwo;
    setState(() {});
  }

  void _multiply() {
    double _numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double _numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = _numberOne * _numberTwo;
    setState(() {});
  }

  void _divide() {
    double _numberOne = double.tryParse(_numOneTEController.text) ?? 0;
    double _numberTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = _numberOne / _numberTwo;
    setState(() {});
  }

  void dispose() {
    _numOneTEController.dispose();
    _numTwoTEController.dispose();
    super.dispose();
  }
}
