import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/destination_carousel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var _selectedIndex = 0;

  List<IconData> icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.train,
    FontAwesomeIcons.ship,
    FontAwesomeIcons.car,
    
  ];

  Widget _buildIcons(int index){
    return GestureDetector(
        onTap: (){
          setState(() {
            _selectedIndex = index;
          });
          print(index);
        },
        child: Container(
        width: 60.0,
        height: 60.0,
        child: Icon(icons[index], size: 25.0,
          color: _selectedIndex == index ? Theme.of(context).accentColor : Colors.blue[300],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: _selectedIndex == index? Colors.lightBlue[100] : Colors.grey[100],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left:20.0, right:120),
              child: Text("What would you like to search?",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold, 
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left:10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map)=> _buildIcons(map.key))
                    .toList(),
              ),
            ),
            SizedBox(height:20.0),
            DestinationCarousel(),
          ],
        ) 
      ),
    );
  }
}