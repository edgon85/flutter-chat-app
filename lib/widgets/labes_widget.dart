import 'package:flutter/material.dart';

class LabelsWidget extends StatelessWidget {
  final String subTitle;
  final String title;
  final String route;

  const LabelsWidget(
      {Key key,
      @required this.title,
      @required this.route,
      @required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          /* ----------------------- */
          Text(this.title,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w300)),
          /* ----------------------- */
          SizedBox(
            height: 10,
          ),
          /* ----------------------- */
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, this.route),
            child: Text(
              this.subTitle,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          /* ----------------------- */
        ],
      ),
    );
  }
}
