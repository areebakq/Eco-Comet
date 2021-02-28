import 'dart:ui';

import 'package:eco_comet/CheckBox.dart';
import 'package:eco_comet/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() => runApp(MaterialApp(
  home: TipsPage(),
));

class TipsPage extends StatelessWidget {
  Map<String, bool> tips = {
    '1. Donate Clothes': false,
    '2. Reduce Food Waste': false,
    '3: Buy healthy foods with less packaging': false,
    '4: Save leftovers for tomorrow': false,
    '5. Buy items with less packaging': false,
    '6. Use a waterbottle instead of plastic bottles': false,
    '7. Recycle (use the smart camera!)': false,
    '8. Purchase items made of recycle material': false,
    '9. Try composting': false,
    '10. Buy rechargable batteries': false,
    '11. Buy Items Packaged in Recycled Cartons': false,
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
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
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffDF9A57)),
            child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                          color: Color(0xffffffff)),
                      child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(33),
                                child: Text(
                                    'Follow these tips to become a more sustainable comet! Check off what you finish!',
                                    style: TextStyle(
                                      color: Color(0xffdf9a57),
                                      fontFamily: 'Mulish',
                                      fontSize: 16,
                                    )
                                )
                            ),
                          ]
                      ),
                  ),
                  CheckBoxes()
                ]
            )
        )
    );
  }
}