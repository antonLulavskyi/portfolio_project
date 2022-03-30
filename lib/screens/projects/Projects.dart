import 'package:flutter/material.dart';
import 'package:portfolio_project/data/data.dart';
import 'package:portfolio_project/shared_widgets/contentCard.dart';
import 'package:portfolio_project/shared_widgets/navigationBar.dart';

class Projects extends StatelessWidget {
  static const routeName = '/projects';
  Projects({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    print('Width: ${screenSize.width}');
    print('Height: ${screenSize.height}');
    return Scaffold(
      body: Column(
        children: [
          const TopNavigationBar(),
          _buildAdaptiveLayout(screenSize, context),
        ],
      ),
    );
  }
}

// (screenSize.width < 700) ? screenSize.width / 2.8 / (screenSize.height / 4) :
//               screenSize.width / 2.9 / (screenSize.height / 2) ,

Widget _buildAdaptiveLayout(Size screenSize, BuildContext context) {
  final data = ProjectsData();
  // For smartphones <=450
  if (screenSize.width <= 910) {
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 0.93,
      child: ListView.builder(
        itemCount: data.projects.length,
        itemBuilder: (context, index) {
          return ContentCard(pasedIndex: index);
        },
      ),
    );
    // For tablets 
  } else {
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 0.93,
      child: GridView.builder(
        padding: const EdgeInsets.all(30),
        itemCount: data.projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //mainAxisExtent: 30,
          // mainAxisSpacing: 30,
          // crossAxisSpacing: 30,
          childAspectRatio: 2/2.5,
          crossAxisCount: screenSize.width <= 1360 ? 2 : 3,
          ),
        itemBuilder: (context, index) {
          return ContentCard(pasedIndex: index);
        }),
    );
  }
}
