import 'package:flutter/material.dart';

import '../data/data.dart';

class ContentCard extends StatelessWidget {
  final data = ProjectsData();
  final int index;
  ContentCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screnSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxHeight: 300),
      margin: (screnSize.width > 900)
          ? const EdgeInsets.all(60)
          : const EdgeInsets.all(30),
      // width: (screnSize.width > 900)
      //     ? screnSize.width * 0.4
      //     : screnSize.width * 0.8,
      height: screnSize.height * 0.7 ,
      //color: Colors.green,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                data.projects[index].imageSource,
                width: screnSize.width * 0.45,
              ),
            ),
            
            Expanded(
              flex: 4,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      data.projects[index].title,
                      style: (screnSize.width > 650)
                          ? const TextStyle(fontSize: 24)
                          : const TextStyle(fontSize: 16),
                    ),
                  ),
                  
                  Container(
                    margin: const EdgeInsets.only(left: 8,right: 2),
                    //color: Colors.red,
                    width: 300,
                    height: 100,
                    child: Text(
                      data.projects[index].description,
                      maxLines: 10,
                      style: const TextStyle(color: Colors.grey),
                      ),
                  ),
                  const Text('Technologies, that being used:'),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('${data.projects[index].technologies}'),
                  ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: ElevatedButton(onPressed: () {}, child: const Text('Learn More')),
                    )
                  ],),
                )

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
