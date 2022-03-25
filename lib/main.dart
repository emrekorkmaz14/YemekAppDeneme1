import 'package:flutter/material.dart';
import 'package:yemekapp/Categories_Page/categories_page.dart';
import 'package:yemekapp/First_Page/first_page.dart';
import 'package:yemekapp/Home_Page/home_page.dart';
import 'package:yemekapp/Profile_Page/profile_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
