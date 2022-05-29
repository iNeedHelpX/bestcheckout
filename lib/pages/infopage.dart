import 'package:bestcheckout/colors/colours_list.dart';
import 'package:bestcheckout/containers/infobox.dart';
import 'package:flutter/material.dart';

//the info page. Person sees this page when pressing i at the bottom screen bar
class InfoPage extends StatefulWidget {
  InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //stuff here
            InfoBox(
                boomtitle: "About this app",
                subtext: "a basic checkout experience using rapyd payments")
          ],
        ),
      ),
    );
  }
}
