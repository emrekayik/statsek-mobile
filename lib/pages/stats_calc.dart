import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsCalc extends StatefulWidget {
  const StatsCalc({Key? key}) : super(key: key);

  @override
  State<StatsCalc> createState() => _StatsCalcState();
}

class _StatsCalcState extends State<StatsCalc> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Text('StatsCalc'),
          // TODO: Get the text from the user input
          TextField(
            style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,

            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter a number',
            ),
          ),
        ],
      ),
    );
  }
}
