import 'package:flutter/material.dart';

class CameraWidget extends StatelessWidget
{
  final Color color1 = Color(0xFFE5E5E5);
  final Color color2 = Color(0xFFE3E6FE);

  @override
  Widget build(BuildContext context)
  {
    final mediaQuery = MediaQuery.of(context);

    return Material(
      child: Container(
        width: mediaQuery.size.width - 30.0,
        //margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(5.0),
        //height: 0.0,
        decoration: BoxDecoration(
          color: color1,
        ),
        child: Column(
          children: <Widget>[
            Container(
              color: color2,
              padding: EdgeInsets.only(
                top: 5.0,
                left: 10.0,
                right: 10.0,
                bottom: 5.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Simple Capture v1.0",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  Container(
                    color: color1,
                    child: IconButton(
                      constraints: BoxConstraints(
                        maxWidth: 40.0,
                        maxHeight: 40.0,
                        minWidth: 30.0,
                        minHeight: 30.0,
                      ),
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 25.0,
                      ),
                      onPressed:(){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 200.0,
              color: Colors.black,
              child: Center(
                child: Text("Front Camera",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    elevation: 7.0,
                    shape: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      left: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),
                    ),
                    onPressed: (){},
                    child: Text("Capture",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  RaisedButton(
                    elevation: 7.0,
                    shape: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      left: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),
                    ),
                    onPressed: (){},
                    child: Text("Take it from device",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
