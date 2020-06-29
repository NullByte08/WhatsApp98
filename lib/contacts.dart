import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp98/constants.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<Color> _colors = [Colors.blue, Colors.white];
  List<double> _stops = [0.0, 0.7];

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 10.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: _colors,
                stops: _stops,
              )),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Images.kBackground),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.0,
                  ),
                  //height: 0.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border(
                      top: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                      left: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      _buildListItems('User 1', Images.kUser1),
                      _buildListItems('User 2', Images.kUser1),
                      _buildListItems('User 3', Images.kUser1),
                      _buildListItems('User 4', Images.kUser1),
                      _buildListItems('User 5', Images.kUser1),
                      _buildListItems('User 6', Images.kUser1),
                      _buildListItems('User 7', Images.kUser1),
                      _buildListItems('User 8', Images.kUser1),
                      _buildListItems('User 9', Images.kUser1),
                      _buildListItems('User 10', Images.kUser1),
                      _buildListItems('User 11', Images.kUser1),
                      _buildListItems('User 12', Images.kUser1),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildListItems(String itemName, String imgPath) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Image.asset(
                      imgPath,
                      // scale: 5,
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      itemName,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
