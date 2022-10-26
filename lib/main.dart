import 'package:flutter/material.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/projects.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'homepage',
      routes:{
        'homepage':(context)=>const Homepage(),
        'projects_page':(context) => const Projectspage(),
      }
    );
  }
}