import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../data/data.dart';

class ContentCard extends StatelessWidget {
  final data = ProjectsData();
  final int pasedIndex;
  ContentCard({Key? key, required this.pasedIndex}) : super(key: key);

  var carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    Size screnSize = MediaQuery.of(context).size;
    return Container(
      margin: (screnSize.width > 900)
          ? const EdgeInsets.all(60)
          : const EdgeInsets.all(30),
      child: Card(
        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CarouselSlider.builder(
                carouselController: carouselController,
                itemCount: data.projects[pasedIndex].images.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Image.asset(
                      data.projects[pasedIndex].images[itemIndex]);
                },
                options: CarouselOptions(
                    height: screnSize.height * 0.4,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 0.9),
              ),
              SizedBox(
                width: screnSize.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        carouselController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: const Text('Previus picture'),
                    ),
                    TextButton(
                      onPressed: () {
                        carouselController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: const Text('Next picture'),
                    ),
                  ],
                ),
              ),
              // Project section
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
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
              //Technologies section:
              Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Row(
                  children: [
                    const Text(
                      'Technologies: ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '${data.projects[pasedIndex].technologies}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              // Learn More Button Section:
              SizedBox(
                width: screnSize.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 2,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Learn more', style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
