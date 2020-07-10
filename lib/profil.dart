import 'package:flutter/material.dart';
import 'qrcode.dart';
import 'webview1.dart';
import 'webview2.dart';
import 'webview3.dart';

class Profil extends StatelessWidget {
  Profil({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil $nama'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fsub2-2.fna.fbcdn.net/v/t1.0-9/81933686_2482389915334943_323602103303929856_o.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_eui2=AeHfU8Qlwx3B8vKQ4t8kB3i9gXQ001XML1SBdDTTVcwvVKLmuqLyn_zGcDa14-4Z2BXqb3F7bWpQIrMvWFxNCTBq&_nc_ohc=JcKFTG6o8TMAX-j7e7e&_nc_ht=scontent.fsub2-2.fna&oh=bbc4607c777815df0297446ded339da8&oe=5F2D6DB6'),
                  radius: 100,
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  'I Putu Tresna Windhu',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue[800],
                  ),
                ),
              ),
            ),

            //kotak kecil//
            Container(
              padding: EdgeInsets.all(40),
              width: 400,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 20, top: 0),
                          padding: EdgeInsets.only(top: 20),
                          width: 130,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.location_city,
                                  color: Colors.amber,
                                  size: 40,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Undiksha()),
                                  );
                                },
                              ),
                              Container(
                                color: Colors.blue[600],
                                margin: EdgeInsets.only(top: 15),
                                width: 125,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    'Undiksha',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 20, top: 12),
                          padding: EdgeInsets.only(top: 20),
                          width: 130,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.live_tv,
                                  color: Colors.red,
                                  size: 40,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Youtube()),
                                  );
                                },
                              ),
                              Container(
                                color: Colors.blue[600],
                                margin: EdgeInsets.only(top: 15),
                                width: 125,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    'Youtube',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 20, top: 0),
                          padding: EdgeInsets.only(top: 20),
                          width: 130,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.center_focus_weak,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Qrcode()),
                                  );
                                },
                              ),
                              Container(
                                color: Colors.blue[600],
                                margin: EdgeInsets.only(top: 15),
                                width: 125,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    'Scanner',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 20, top: 12),
                          padding: EdgeInsets.only(top: 20),
                          width: 130,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.monochrome_photos,
                                  color: Colors.orange[900],
                                  size: 40,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Instagram()),
                                  );
                                },
                              ),
                              Container(
                                color: Colors.blue[600],
                                margin: EdgeInsets.only(top: 15),
                                width: 125,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    'Instagram',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
            //kotak kecil//
          ],
        ),
      ),
    );
  }
}
