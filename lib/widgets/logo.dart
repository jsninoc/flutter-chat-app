import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key key, @required this.title}) : super(key: key);
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(
                'assets/tag-logo.png',
              ),
              width: 170,
            ),
            SizedBox(height: 20,),
            Text(
              this.title,
              style: TextStyle(
                fontSize: 30
              ),
            )
          ],
        ),
      ),
    );
  }
}