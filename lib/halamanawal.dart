import 'package:flutter/material.dart';
import 'screen.dart';

class Halamanawal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Image.asset(
              'images/tresnawindhu.jpg',
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'WELLCOME TO MY DIARY',
              style: TextStyle(fontSize: 18),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.blue,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Halsatu()),
              );
            },
          ),
        ],
      ),
    );
  }
}
