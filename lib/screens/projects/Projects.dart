import 'package:flutter/material.dart';
import 'package:portfolio_project/shared_widgets/contentCard.dart';
import 'package:portfolio_project/shared_widgets/navigationBar.dart';

class Projects extends StatelessWidget {
  static const routeName = '/projects';
  const Projects({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        const TopNavigationBar(),
        Container(
          height: screenSize.height * 0.9,
          //color: Colors.red,
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 1100,
              childAspectRatio: 1,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              ),
            itemBuilder: (context, index) => const ContentCard(),
            ),
        ),
      ]),
    );
  }
}