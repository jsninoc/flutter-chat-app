import 'package:flutter/material.dart';

class BlueButon extends StatelessWidget {
  const BlueButon({Key key, @required this.onPressed, @required this.text}) : super(key: key);

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 2,
        primary: Colors.blue,
        shape: StadiumBorder(),
      ),
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
          ),
        ),
      )
    );
  }
}