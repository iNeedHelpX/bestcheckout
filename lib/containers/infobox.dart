import 'package:bestcheckout/colors/colours_list.dart';
import 'package:flutter/material.dart';

//this is a text box to present certain information about the app or whatever info you wish to convey
class InfoBox extends StatefulWidget {
  final String boomtitle;
  final String subtext;

  InfoBox({
    Key? key,
    required this.boomtitle,
    required this.subtext,
  }) : super(key: key);

  @override
  _InfoBoxState createState() => _InfoBoxState();
}

class _InfoBoxState extends State<InfoBox> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Padding(
            //This is the padding around the box
            padding: const EdgeInsets.fromLTRB(15, 2, 15, 15),
            child: Container(
              padding: EdgeInsets.only(
                  //This is the padding around the text!
                  left: 15,
                  top: 10,
                  right: 15,
                  bottom: 5),
              width: 400,
              margin: EdgeInsets.only(top: 10),
              decoration: _decor(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _boomTitle(),
                  _textTitle(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//the box color and design
  BoxDecoration _decor() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: textgreyblue,
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 98, 21, 255),
              offset: Offset(11, 10),
              blurRadius: 75),
        ]);
  }

  Align _boomTitle() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        widget.boomtitle,
        style: TextStyle(
            color: textturq,
            fontFamily: 'luv',
            fontSize: 25,
            fontWeight: FontWeight.w900),
        textAlign: TextAlign.center,
      ),
    );
  }

  Align _textTitle() {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: widget.subtext,
              style: TextStyle(
                color: orangetext,
                fontFamily: 'anika',
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}