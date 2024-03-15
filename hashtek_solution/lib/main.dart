import 'package:flutter/material.dart';
import 'package:hashtek_solution/pages/country_page.dart';
import 'package:hashtek_solution/pages/profile_page.dart';
import 'package:hashtek_solution/widgets/custom_navigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfilePage(),
    );
  }
}
