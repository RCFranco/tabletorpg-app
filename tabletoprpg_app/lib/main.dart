import 'package:flutter/material.dart';
import 'package:tabletoprpg_app/models/mock_data.dart';
import 'package:tabletoprpg_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ficha Tormenta20',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(personagem: personagemMock),
      debugShowCheckedModeBanner: false,
    );
  }
}
