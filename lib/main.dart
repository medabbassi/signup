import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
      String  _value ='my name is me';
  void _onPressed(){
    setState(() {
      _value ='hello worls';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Add Widgets Here'),
            new TextField(
                decoration: InputDecoration(
                    hintText: 'mail here',
                    prefixIcon: Icon(Icons.mail_outline),
                    contentPadding:
                        EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0))),
            new TextField(
                decoration: InputDecoration(
                    hintText: 'name here',
                    hoverColor: Colors.greenAccent,
                    prefixIcon: Icon(Icons.people_outline),
                    contentPadding:
                        EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 20.0)))
            ,
            new TextField(
                decoration:

                InputDecoration(
                    hintText: 'password here',
                    hoverColor: Colors.greenAccent,

                    prefixIcon: Icon(Icons.https),
                    contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 20.0)

                )
            ),
                new RaisedButton(
                  onPressed: _onPressed,
                  child: new Text('Click me'),
                  color: Colors.cyanAccent,
                  )
          ],
        ),
      ),
    );
  }
}
