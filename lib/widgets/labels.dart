import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String route;
  final String title;
  final String text;

  const Labels({
    Key key, 
    @required this.route, 
    @required this.text,
    @required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(this.route);
            },
            child: Text(
              this.text,
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.w700
              ),
            ),
          )
        ],
      ),
    );
  }
}