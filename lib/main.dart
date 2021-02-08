import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de clientes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Contador de clientes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      if(_counter >0)
        _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quantidade de pessoas no',
                style: TextStyle(fontSize: 30)
            ),
            Text(
                'restaurante:',
                style: TextStyle(fontSize: 30)
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 50)
            ),
            RaisedButton(
              color: Colors.green,
              onPressed: _incrementCounter,
              child: Text(
                  '+',
                  style:  TextStyle(fontSize: 40)
              )
            ),
            RaisedButton(
              color: Colors.red,
              onPressed: _decrementCounter,
              child: Text(
                  '-',
                  style: TextStyle(fontSize: 40)
              )
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
