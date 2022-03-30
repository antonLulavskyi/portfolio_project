import 'package:flutter/material.dart';
import 'package:portfolio_project/data/data.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailScreen extends StatelessWidget {
  final int index;

  final nytViewerURL = 'https://github.com/antonLulavskyi/nyt_viewer_v1';
  final providerTestingURL = 'https://github.com/antonLulavskyi/provider_testing';
  final adaptiveLayoutURL = 'https://github.com/antonLulavskyi/adaptive_layout';
  final portfolioURL = 'https://github.com/antonLulavskyi/antonLulavskyi.github.io';
  

  const ProjectDetailScreen({Key? key, required this.index}) : super(key: key);

  void _launchURL() async {
    String temptUrl = '';
    
    switch (index) {
      case 0: temptUrl = nytViewerURL; break;
      case 1: temptUrl = providerTestingURL; break;
      case 2: temptUrl = adaptiveLayoutURL; break;
      case 3: temptUrl = portfolioURL; break;
    }


  if (!await launch(temptUrl)) throw 'Could not launch $temptUrl';
}

  @override
  Widget build(BuildContext context) {
    final passedArgs =
        ModalRoute.of(context)!.settings.arguments as ProjectsData;
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close_rounded)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30),
              child: Text(
                passedArgs.projects[index].title,
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 10),
              child: Text(
                'Description:',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                passedArgs.projects[index].description,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(onPressed: _launchURL, child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child:  Text('Source code', style: TextStyle(fontWeight: FontWeight.bold),),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

