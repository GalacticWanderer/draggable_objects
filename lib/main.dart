import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DraggableObject(),
    );
  }
}

class DraggableObject extends StatefulWidget {
  @override
  _DraggableObjectState createState() => _DraggableObjectState();
}

class _DraggableObjectState extends State<DraggableObject> {
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draggable object"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            //draggable allows the dragging of items
            child: Draggable(
              child: FlutterLogo(
                key: key,
                size: 100,
              ),
              //shows an item being dragged
              feedback: FlutterLogo(
                size: 100,
              ),
              //what will replace the original item's place when being dragged
              childWhenDragging: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
