import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final String title;

  const LogoWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      // width: MediaQuery.of(context).size.width * .4,
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * .3,
              child: Image(
                  image: AssetImage(
                'assets/tag-logo.png',
              ))),
          Text(
            this.title,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    ));
  }
}
