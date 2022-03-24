import 'package:flutter/material.dart';
import 'package:portfolio_project/shared_widgets/navigationBar.dart';

class AboutMe extends StatelessWidget {
  static const routeName = '/';
  const AboutMe({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopNavigationBar(),
        ],
      ),
    );
  }
}