import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final String boomTitle;
  final String subtext;
  const InfoBox({Key? key, required this.boomTitle, required this.subtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 2, 15, 10),
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
              width: 400,
            ),
          )
        ],
      ),
    );
  }
}
