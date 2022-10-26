import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class Projectspage extends StatelessWidget {
  const Projectspage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(home: SafeArea(child: Scaffold()));
  }
}
