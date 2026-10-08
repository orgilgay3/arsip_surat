import 'package:arsip_surat/Login.dart';
import 'package:flutter/material.dart';
import 'package:arsip_surat/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ArsipKu',
      home: const LoginPage(),
    );
  }
}
