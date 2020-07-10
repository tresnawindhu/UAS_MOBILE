import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Qrcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanQR(),
    );
  }
}

class HalamanQR extends StatefulWidget {
  @override
  _HalamanQRState createState() => _HalamanQRState();
}

class _HalamanQRState extends State<HalamanQR> {
  String text = 'Hasil QR Scan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('QR Scan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text("Scan"),
              onPressed: () async {
                text = await scanner.scan();
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
