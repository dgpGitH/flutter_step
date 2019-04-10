import 'package:flutter/material.dart';

void main() {
    runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '30 Days of Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("30 Days of Flutter"),
      ),
      body: ListView(children: _getListData()),
    );
  }

  _getListData() {
    List<Widget> widgets = [];
    for (int i = 1; i < 31; i++) {
      widgets.add(GestureDetector(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text("Row $i"),
        ),
        onTap: () {
          print('$i row tapped');
        },
      ));
    }
    return widgets;
  }
}
