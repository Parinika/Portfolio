import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/constants.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      backgroundColor: kPrimaryLightColor,
      // appBar: AppBar(
      //   backgroundColor: kBGColor,
      //   elevation: 0,
      //   centerTitle: true,
      //   // automaticallyImplyLeading: false,
      //   title: Text(
      //     'Home',
      //     textAlign: TextAlign.center,
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
      //   ),
      // ),
      body: SizedBox.expand(
        // width: double.infinity,
        // height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
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
            Column(
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
            )
          ],
        ),
      ),
    )));
  }
}
