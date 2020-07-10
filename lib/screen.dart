import 'package:flutter/material.dart';
import 'DBHelper.dart';
import 'NotePage.dart';
import 'Listnote.dart';
import 'about.dart';
import 'profil.dart';

class Halsatu extends StatefulWidget {
  @override
  _HalsatuState createState() => _HalsatuState();
}

class _HalsatuState extends State<Halsatu> {
  var db = new DBHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("MY DIARY"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.fsub2-2.fna.fbcdn.net/v/t1.0-9/81933686_2482389915334943_323602103303929856_o.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_eui2=AeHfU8Qlwx3B8vKQ4t8kB3i9gXQ001XML1SBdDTTVcwvVKLmuqLyn_zGcDa14-4Z2BXqb3F7bWpQIrMvWFxNCTBq&_nc_ohc=JcKFTG6o8TMAX-j7e7e&_nc_ht=scontent.fsub2-2.fna&oh=bbc4607c777815df0297446ded339da8&oe=5F2D6DB6'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      'I Putu Tresna Windhu',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'tresnawindhu@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'profile',
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext) =>
                        new Profil(nama: "Tresna Windhu")));
              },
            ),
            ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  'About',
                  style: TextStyle(fontSize: 18.0),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext) =>
                          new About(nama: "About Aplikasi")));
                }),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text(
                'Back',
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: null,
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[400],
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.edit,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => new NotePage(null, true))),
      ),
      body: FutureBuilder(
        future: db.getNote(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          var data = snapshot.data;

          return snapshot.hasData
              ? new NoteList(data)
              : Center(
                  child: Text("No Data"),
                );
        },
      ),
    );
  }
}
