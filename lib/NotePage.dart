import 'dart:ffi';
import 'package:flutter/material.dart';
import 'DBHelper.dart';
import 'mynote.dart';

class NotePage extends StatefulWidget {
  NotePage(this._mynote, this._isNew);

  final Mynote _mynote;
  final bool _isNew;

  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  String title;
  bool btnSave = false;
  bool btnEdit = true;
  bool btnDelete = true;

  Mynote mynote;
  String createDate;

  final cTitle = TextEditingController();
  final cNote = TextEditingController();

  var now = DateTime.now();

  bool _enabledTextField = true;

  Future addRecord() async {
    var db = DBHelper();
    String dateNOW =
        "${now.day}-${now.month}-${now.year}, ${now.hour}:${now.minute}";

    var mynote =
        Mynote(cTitle.text, cNote.text, dateNOW, dateNOW, now.toString());
    await db.saveNote(mynote);
    print("saved");
  }

  Future updateRecord() async {
    var db = new DBHelper();
    String dateNOW =
        "${now.day}-${now.month}-${now.year}, ${now.hour}:${now.minute}";
    var mynote = new Mynote(
        cTitle.text, cNote.text, createDate, dateNOW, now.toString());
    mynote.setNote(this.mynote.id);
    await db.updateNote(mynote);
  }

  Void _saveData() {
    if (widget._isNew) {
      addRecord();
    } else {
      updateRecord();
    }
    Navigator.of(context).pop();
    //
  }

  void _editData() {
    setState(() {
      _enabledTextField = true;
      btnEdit = false;
      btnSave = true;
      btnDelete = true;
      title = "Edit Data";
    });
  }

  void delete(Mynote mynote) {
    var db = new DBHelper();
    db.deleteNote(mynote);
  }

  void _confirmDelete() {
    AlertDialog alertDialog = AlertDialog(
      content: Text(
        "are you sure ??",
        style: TextStyle(fontSize: 20.0),
      ),
      actions: <Widget>[
        RaisedButton(
          color: Colors.blue,
          child: Text(
            "OK Delete",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            Navigator.pop(context);
            delete(mynote);
            Navigator.pop(context);
          },
        ),
        RaisedButton(
            color: Colors.blue,
            child: Text(
              "Cencel",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    );

    showDialog(context: context, child: alertDialog);
  }

  @override
  void initState() {
    if (widget._mynote != null) {
      mynote = widget._mynote;
      cTitle.text = mynote.title;
      cNote.text = mynote.note;
      title = "My Note";
      _enabledTextField = false;
      createDate = mynote.createDate;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget._isNew) {
      title = "New Diary";
      btnSave = true;
      btnEdit = false;
      btnDelete = false;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 25,
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: CreateButton(
                    icon: Icons.save,
                    enable: btnSave,
                    onpress: _saveData,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: CreateButton(
                    icon: Icons.edit,
                    enable: btnEdit,
                    onpress: _editData,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: CreateButton(
                    icon: Icons.delete,
                    enable: btnDelete,
                    onpress: _confirmDelete,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                enabled: _enabledTextField,
                controller: cTitle,
                decoration: InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 24.0),
                maxLines: null,
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                enabled: _enabledTextField,
                controller: cNote,
                decoration: InputDecoration(
                  hintText: "Tulis Cerita",
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 24.0),
                maxLines: null,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.newline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateButton extends StatelessWidget {
  final IconData icon;
  final bool enable;
  final onpress;

  CreateButton({this.icon, this.enable, this.onpress});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: enable ? Colors.blue : Colors.grey),
      child: IconButton(
          icon: Icon(icon),
          color: Colors.white,
          iconSize: 18.0,
          onPressed: () {
            if (enable) {
              onpress();
            }
          }),
    );
  }
}
