import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petsappui/configuration.dart';
import 'package:petsappui/style_guide.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      color: kPrimaryGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              CircleAvatar(),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Miroslava Savitskaya',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF90EE8E),
                    ),
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: drawerItems.map((element) {
              return Padding(
                padding: const EdgeInsets.only(left:10.0,bottom: 10,top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      element['icon'],
                      color: Color(0xFFAEF0AC),
                    ),
                    SizedBox(width: 15,),
                    Text(
                      element['title'],
                      style: TextStyle(
                        color: Color(0xFFAEF0AC),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Color(0xFFAEF0AC),
                ),
              ),
              Text(
                'Settings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:Color(0xFFAEF0AC),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 1.8,
                color: Color(0xFFAEF0AC),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Log out',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFAEF0AC),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
