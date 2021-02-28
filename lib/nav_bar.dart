import 'package:eco_comet/tips_page.dart';
import 'package:flutter/material.dart';
import 'ImagePage.dart';
import 'MapsPage.dart';
import 'ResultPage.dart';


class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _tabs = <Widget>[
    TipsPage(),
    ImagePage(),
    MapsPage(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _tabs.elementAt(_selectedIndex)),
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb,color: Colors.white),
            title: Text('Tips'),
            backgroundColor: Color(0xffA9E5BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt,color: Colors.white),
            title: Text('Take photo'),
            backgroundColor: Color(0xffA9E5BB),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_sharp,color: Colors.white),
            title: Text('UTD Recycle Map'),
            backgroundColor: Color(0xffA9E5BB),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}