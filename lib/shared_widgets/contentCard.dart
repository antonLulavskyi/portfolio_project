import 'package:flutter/material.dart';
class ContentCard extends StatelessWidget {
  const ContentCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screnSize = MediaQuery.of(context).size;
    return Container(
      margin: (screnSize.width > 600) ? const EdgeInsets.all(80): const EdgeInsets.all(30),
      width: 400,
      height: 400,
      //color: Colors.green,
      child: Card(
        child: Text('Hello'),
      ),
    );
  }
}