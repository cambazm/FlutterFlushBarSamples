import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flushbar sample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              child: new Text("SIMPLE FLUSHBAR"),
              onPressed: (){
                Flushbar(
                  title:  "Hey User",
                  message:  "This is the message we want you to see",
                  duration:  Duration(seconds: 3),
                )..show(context);
              },
            ),
            RaisedButton(
              child: new Text("STYLED FLUSHBAR"),
              onPressed: (){
                Flushbar(
                  margin: EdgeInsets.all(8),
                  borderRadius: 8,
                  icon: Icon(
                    Icons.announcement,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  leftBarIndicatorColor: Colors.blue[300],
                  backgroundGradient: LinearGradient(colors: [Colors.blue, Colors.teal]),
                  backgroundColor: Colors.red,
                  boxShadows: [BoxShadow(color: Colors.blue[800], offset: Offset(0.0, 2.0), blurRadius: 3.0,)],
                  titleText: Text("Hello User", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.black, fontFamily:"ShadowsIntoLightTwo"),),
                  messageText: Text("This is the message we want you to see", style: TextStyle(fontSize: 16.0, color: Colors.white, fontFamily: "ShadowsIntoLightTwo"),),
                  duration:  Duration(seconds: 3),
                )..show(context);
              },
            ),
            RaisedButton(
              child: new Text("TOP FLUSHBAR"),
              onPressed: (){
                Flushbar(
                  flushbarPosition: FlushbarPosition.TOP,
                  title:  "Hey User",
                  message:  "This is the message we want you to see",
                  duration:  Duration(seconds: 3),
                )..show(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
