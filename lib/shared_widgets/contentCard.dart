import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio_project/screens/projects/ProjectDetail.dart';

import '../data/data.dart';

class ContentCard extends StatelessWidget {
  final data = ProjectsData();
  final int pasedIndex;
  ContentCard({Key? key, required this.pasedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    CarouselController carouselController = CarouselController();

    Size screnSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(20),
      width: screnSize.width,
      height: screnSize.height * 0.8,
      color: Colors.white,
      child: Card(
        elevation: 20,
        child: Column(
          children: [
            // Carousel Slider
            Expanded(
              flex: 2,
              child: CarouselSlider.builder(
                carouselController: carouselController,
                itemCount: data.projects[pasedIndex].images.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Image.asset(
                      data.projects[pasedIndex].images[itemIndex]);
                },
                options: CarouselOptions(
                  height: screnSize.height * 0.6,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 0.9,
                ),
              ),
            ),
            // Buttons for controling Carousel Slider:
            SizedBox(
              width: screnSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => carouselController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn),
                    child: const Text('Previus picture'),
                  ),
                  TextButton(
                    onPressed: () => carouselController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn),
                    child: const Text('Next picture'),
                  ),
                ],
              ),
            ),
            // Project Description section:
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0),
              child: Row(
                children: [
                  const Text(
                    'Project: ',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    data.projects[pasedIndex].title,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // Technologies Used section:
            Padding(
              padding: const EdgeInsets.only(top: 7.0, left: 20.0),
              child: Row(
                children: [
                  const Text(
                    'Technologies: ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  FittedBox(
                    child: Text(
                      data.projects[pasedIndex].technologies,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            // Learn More button:
            SizedBox(
              width: screnSize.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 2,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ProjectDetailScreen(
                                  index: pasedIndex,
                                );
                              },
                              settings:
                                  RouteSettings(name: '/', arguments: data),
                            ));
                        //Navigator.pushNamed(context, ProjectDetailScreen.routeName, arguments: {data, pasedIndex});
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(
                          'Learn more',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
