import 'package:flutter/material.dart';
import 'home_scaffold.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Material App Title",
      home: Home(),
    );
  }
}
