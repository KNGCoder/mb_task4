import 'package:flutter/material.dart';
import 'package:mb_task4/pages/home_page.dart';

class My_App extends StatelessWidget {
  const My_App({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePagee(),
    );
  }
}