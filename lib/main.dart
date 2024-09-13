

import 'package:flutter/material.dart';
import 'package:flutter_lessons/base/buttom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade400),
        // useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:const BottomNav()
    );
  }
}




