import 'package:flutter/material.dart';
import 'package:flutter_application_gestao/pages/register_page.dart';
import 'firebase_options.dart';

void main() async {
  // Inicialize o Firebase antes de runApp
  await initializeFirebase();

   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ContaConsciente',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignUpPage(),
    );
  }
}