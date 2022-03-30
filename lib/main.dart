import 'package:flutter/material.dart';
import 'package:portfolio_project/screens/about_me/aboutMe.dart';
import 'package:portfolio_project/screens/contact_me/ContactMe.dart';
import 'package:portfolio_project/screens/projects/Projects.dart';

void main() {
  runApp(const MyApp());
}

Map<int, Color> color = const {
    50:  Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };

  MaterialColor colorCustom = MaterialColor(0xFFFFFFFF, color);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: colorCustom,
      ),
      initialRoute: AboutMe.routeName,
      routes: {
        AboutMe.routeName: (context) =>  const AboutMe(),
        Projects.routeName:(context) =>  Projects(),
        ContactMe.routeName:(context) => const ContactMe(),
       
      },
    );
  }
}
