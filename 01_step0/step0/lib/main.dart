import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
        body: StepFlutter(),
      ),
    ),
  );
}

class StepFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueAccent,
        height: 100.0,
        width: 300.0,
        child: Center(
          child: Text(
            'JohnSnow!',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
              ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
