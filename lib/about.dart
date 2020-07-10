import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Detail Aplikasi"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(right: 16, left: 16, top: 16),
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Image.network(
                  "http://panmomo.com/uploads/images/products/notebook_flower_06_2_960.jpeg"),
              Text(
                'Aplikasi ini adalah aplikasi yang digunakan untuk mencatat pengalaman user ataupun hal-hal penting yang user alami, disini user bisa mencurahkan isi hatinya lewat sebuah tulisan, aplikasi ini juga dilengkapi dengan fitur-fitur yang berkoneksi ke youtube, instagram, dan web universitas. dan juga terdapat scanner untuk menyecan kode kode penting',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ));
  }
}
