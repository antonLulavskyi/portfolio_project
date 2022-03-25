import 'package:flutter/material.dart';
import 'package:portfolio_project/data/data.dart';
import 'package:portfolio_project/shared_widgets/contentCard.dart';
import 'package:portfolio_project/shared_widgets/navigationBar.dart';

class Projects extends StatelessWidget {
  final data = ProjectsData();
  static const routeName = '/projects';
  Projects({Key? key}) : super(key: key);

  double _settingAspectRation(Size screenSize) {

    double aspectRatio = 1 / 1;

    if (screenSize.width <= 375) {
      aspectRatio = screenSize.width  / (screenSize.height * 1.5); //1.5
    } else if (screenSize.width < 700) {
      aspectRatio = screenSize.width / 2.8 / (screenSize.height / 4);
    } else if (screenSize.width < 1390 && screenSize.width > 700) {
      aspectRatio = screenSize.width / 2.9 / (screenSize.height / 2);
    } else if (screenSize.width > 1390) {
      aspectRatio = screenSize.width / 12 / (screenSize.height / 5);
    } 

    return aspectRatio;
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // print('Width: ${screenSize.width}');
    // print('Height: ${screenSize.height}');
    return Scaffold(
      body: Column(
        children: [
          const TopNavigationBar(),
          SizedBox(
            height: screenSize.height * 0.9,
            //width: screenSize.width,
            //color: Colors.red,
            child: GridView.builder(
              itemCount: data.projects.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 700,
                childAspectRatio: _settingAspectRation(screenSize),
                // mainAxisSpacing: 0,
                // crossAxisSpacing: 0,
              ),
              itemBuilder: (context, index) => ContentCard(pasedIndex: index),
            ),
          ),
        ],
      ),
    );
  }
}

// (screenSize.width < 700) ? screenSize.width / 2.8 / (screenSize.height / 4) : 
//               screenSize.width / 2.9 / (screenSize.height / 2) ,