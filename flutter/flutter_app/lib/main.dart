import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Gerador de números aleatórios'),
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
  int numero_gerado = 0;

  void gerarNumero() {
    setState(() {
      var random = new Random();
      numero_gerado = random.nextInt(11);
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
              'Clique no botão abaixo para gerar um número aleatório',
            ),
            SizedBox(height: 50),
            RaisedButton(
              onPressed: gerarNumero,
              child: Text("NESSE AQUI"),
            ),
            SizedBox(height: 50),
            Text(
                'Número sorteado: $numero_gerado'
            ),
          ],
        ),
      ),
    );
  }
}

