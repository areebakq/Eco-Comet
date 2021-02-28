import 'dart:ui';

import 'package:eco_comet/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() => runApp(MaterialApp(
  home: TipsPage(),
));

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffA9E5BB),
        centerTitle: true,
        title: Text(
          'Daily tips',
          style: TextStyle(
            fontFamily: 'Mulish',
            fontSize: 25,
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: Container(
          color: Color(0xffebf9ef),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(33),
                  child: Text(
                    'Follow these tips to become a more sustainable comet!',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Mulish',
                      fontSize: 16,

                    )
                  )
              )
            ],
          )
      ),
    );
  }
}