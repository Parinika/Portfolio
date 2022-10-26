import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class Projectspage extends StatelessWidget {
  const Projectspage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 10,
            centerTitle: true,
            title: Text("Projects",
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                )),
          ),
          body: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10.0),
                          top: Radius.circular(10.0)),
                    ),
                    leading: Icon(Icons.html_outlined),
                    title: Text(
                      'Harry Potter Quiz',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text('Javascript based harry potter quiz'),
                    // dense: true,
                    // isThreeLine: true,
                    tileColor: kPrimaryLightColor,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10.0),
                          top: Radius.circular(10.0)),
                    ),
                    leading: Icon(
                      Icons.flutter_dash_outlined,
                    ),
                    title: Text(
                      'Find Your Doctor',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                        'Flutter app to find doctor near your home using location or by speciality of the doctor'),
                    isThreeLine: true,
                    tileColor: kPrimaryLightColor,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10.0),
                          top: Radius.circular(10.0)),
                    ),
                    leading: Icon(
                      Icons.group_outlined,
                    ),
                    title: Text(
                      'MBTI personality predictor',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                        'Compared 6 different machine learning models to find the one with best accuracy for personality prediction'),
                    isThreeLine: true,
                    tileColor: kPrimaryLightColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
