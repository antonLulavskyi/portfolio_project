import 'package:flutter/material.dart';
import 'package:portfolio_project/data/data.dart';
import 'package:portfolio_project/shared_widgets/contentCard.dart';
import 'package:portfolio_project/shared_widgets/navigationBar.dart';

class Projects extends StatelessWidget {
  final data = ProjectsData();
  static const routeName = '/projects';
  Projects({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        const TopNavigationBar(),
        Container(
          height: screenSize.height * 0.9,
          //width: screenSize.width,
          //color: Colors.red,
          child: GridView.builder(
            itemCount: data.projects.length,
            gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 1100,
              childAspectRatio: 2/3,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              ),
            itemBuilder: (context, index) => ContentCard(index: index),
            ),
        ),
      ]),
    );
  }
}