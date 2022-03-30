import 'package:flutter/material.dart';
import 'package:portfolio_project/shared_widgets/navigationBar.dart';
import 'package:flutter/services.dart';

class ContactMe extends StatefulWidget {
  static const routeName = '/contact-me';
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  final String email = 'antonliuliawskyi@gmail.com';
  bool isCopied = false;
  

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const TopNavigationBar(),
          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(email),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Clipboard.setData(
                        ClipboardData(text: email),
                      );
                      setState(() {
                        isCopied = !isCopied;
                      });
                    },
                    child: const Text('Copy email'),
                  ),
                ),
                (isCopied) ? const Text('Copied!', style: TextStyle(color: Colors.grey),) : const Text(''),
              ],
            ),
          )
        ],
      ),
    );
  }
}
