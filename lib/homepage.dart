import 'package:flutter/material.dart';
import 'package:portfolio/projects.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/constants.dart';
import 'package:flutter/gestures.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                backgroundColor: kPrimaryLightColor,
                body: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    // child: SizedBox(
                    //   width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          fit: StackFit.loose,
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: ClipPath(
                                  clipper: WaveClipper(),
                                  child: Container(
                                    color: kBGColor,
                                    height: 100,
                                  )),
                            ),
                            ClipPath(
                                clipper: WaveClipperUpper(),
                                child: Container(
                                  color: kBGColor,
                                  height: 100,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          'Front End Developer',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(360.0),
                          child: Image.asset(
                            'assests/images/profilepic.jpg',
                            height: 175.0,
                            width: 175.0,
                            alignment: AlignmentDirectional.center,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Parinika Jain',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FractionallySizedBox(
                            widthFactor: 0.5,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.email_outlined,
                                    ),
                                    Text(
                                      'parinika1004@gmail.com',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(children: [
                                  Icon(
                                    Icons.phone_android_outlined,
                                  ),
                                  Text(
                                    '9756696726',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                  ),
                                  Text(
                                    'Delhi, India',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  Icon(
                                    Icons.book_online_outlined,
                                  ),
                                  Text(
                                    'MCA',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ]),
                              ],
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        FractionallySizedBox(
                          widthFactor: 0.5,
                          child: ElevatedButton(
                              onPressed: () {
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: kBGColor,
                                  onPrimary: kPrimaryLightColor,
                                  fixedSize: const Size(50, 40),
                                  elevation: 2,
                                  shape: (RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: kPrimaryColor)))),
                              child: Text(
                                'Download Resume',
                                style: TextStyle(fontSize: 20.0),
                              )),
                        ),
                        FractionallySizedBox(
                          widthFactor: 0.5,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Projectspage()));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: kBGColor,
                                onPrimary: kPrimaryLightColor,
                                elevation: 2,
                                shape: (RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ))),
                            child: Text(
                              'Projects',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        )
                      ],
                    ),
                    // ),
                  ),
                ))));
  }
}

class WaveClipper extends CustomClipper<Path> {
  //@override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height - 30.0);
    var firstStart = Offset(size.width / 4, size.height + 25.0);
    var firstEnd = Offset(size.width / 1.5, size.height - 30.0);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 60);
    var secondEnd = Offset(size.width, size.height - 50.0);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class WaveClipperUpper extends CustomClipper<Path> {
  //@override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height - 10.0);
    var firstStart = Offset(size.width / 4, size.height - 100.0);
    var firstEnd = Offset(size.width / 1.85, size.height - 35.0);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart =
        Offset(size.width - (size.width / 5.24), size.height + 20.0);
    var secondEnd = Offset(size.width, size.height - 20.0);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
