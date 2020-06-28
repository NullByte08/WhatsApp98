import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;

    return Container(
      width: width - 30.0,
      //margin: EdgeInsets.all(10.0),
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
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              "images/image4.png",
              width: 50.0,
              height: 50.0,
            ),
            title: Text(
              "New Office Document",
              style: TextStyle(
                fontSize: 25.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              "images/image4.png",
              width: 50.0,
              height: 50.0,
            ),
            title: Text(
              "Open Office Document",
              style: TextStyle(
                fontSize: 25.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          ),
          Divider(
            thickness: 3.0,
            color: Colors.white38,
          ),
          ListTile(
            leading: Image.asset(
              "images/image4.png",
              width: 50.0,
              height: 50.0,
            ),
            title: Text(
              "Contacts",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 50.0,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              "images/image5.png",
              width: 50.0,
              height: 50.0,
            ),
            title: Text(
              "Status",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 50.0,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              "images/image6.png",
              width: 50.0,
              height: 50.0,
            ),
            title: Text(
              "Call Logs",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 50.0,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              "images/image7.png",
              width: 50.0,
              height: 50.0,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 50.0,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              "images/image8.png",
              width: 50.0,
              height: 50.0,
            ),
            title: Text(
              "Groups",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 50.0,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              "images/image9.png",
              width: 50.0,
              height: 50.0,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 50.0,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          Divider(
            thickness: 3.0,
            color: Colors.white38,
          ),
          ListTile(
            leading: Image.asset(
              "images/image10.png",
              width: 50.0,
              height: 50.0,
            ),
            title: Text(
              "Log Out",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 50.0,
              color: Colors.black,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
