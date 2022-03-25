import 'package:flutter/material.dart';
import 'package:portfolio_project/screens/about_me/aboutMe.dart';
import 'package:portfolio_project/screens/projects/Projects.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key? key}) : super(key: key);

   

  @override
  Widget build(BuildContext context) {
  
    var screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: (screenSize.width > 600) ? screenSize.width * 0.5: screenSize.width * 0.16,
        ),
        SizedBox(
          width: (screenSize.width > 600) ? screenSize.width * 0.5 : screenSize.width * 0.7,
          height: 60,
          child: Row(
            mainAxisAlignment: (screenSize.width > 600) ? MainAxisAlignment.spaceAround: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                //autofocus: true,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AboutMe.routeName);
                },
                child: const Text('About me', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Projects.routeName);
                },
                child: const Text('Projects', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Contact me', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
