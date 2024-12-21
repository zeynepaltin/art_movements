import 'package:flutter/material.dart';
import 'pages/artmovementlistpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Art Movements',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Artmovementlistpage(),
    );
  }
}





