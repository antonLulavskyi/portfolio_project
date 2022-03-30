import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_project/data/data.dart';
import 'package:portfolio_project/shared_widgets/navigationBar.dart';

class AboutMe extends StatelessWidget {
  static const routeName = '/';
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopNavigationBar(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 10, bottom: 10),
                  child: SizedBox(
                    width: screenSize.width * 0.3,
                    height: screenSize.height * 0.3,
                    child: CircleAvatar(
                      radius: 18,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/avatar.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: SizedBox(
                    //margin: EdgeInsets.only(top: 30),
                    //color: Colors.red,
                    width: screenSize.width,
                    child: const AutoSizeText(
                      kSelfDescription,
                      maxLines: 50,
                      minFontSize: 16,
                      maxFontSize: 24,
                      //style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: const AutoSizeText(
                kSelfDescription2,
                maxLines: 50,
                minFontSize: 16,
                maxFontSize: 24,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: const AutoSizeText(
                kSelfDescription3,
                maxLines: 50,
                minFontSize: 16,
                maxFontSize: 24,
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
