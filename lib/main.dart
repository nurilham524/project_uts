// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'homepage.dart';
import 'detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Makanan Sulawesi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => DetailPage(title: '', description: '', imagePath: '',),
      },
    );
  }
}
