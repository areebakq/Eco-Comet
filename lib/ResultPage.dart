import 'package:eco_comet/ImagePage.dart';
import 'package:eco_comet/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() => runApp(MaterialApp(
  home: ResultPage(),
));

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffA9E5BB),
      centerTitle: true,
      title: Text(
       'Is this recyclable?',
        style: TextStyle(
          fontFamily: 'Mulish',
          fontSize: 25,
          color: Color(0xffffffff),
        ),
      ),
      ),
      body:
      Container(
        color: Color(0xffebf9ef),
        child: Column(
          children: [
            Container(
              height: size.height * 0.2 - 27,
              child: Stack(
                children:[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffA9E5BB),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36))
                    ),
                  ),
                  Positioned(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                            height: 54,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 120.0, top: 9),
                              child: Text(
                                'Not recyclable',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 25,
                                  color: Color(0xffdf9a57),
                                )
                              ),
                            )
                        ),
                      )
                  ),
                ]
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                       image: DecorationImage(
                         fit: BoxFit.fill,
                        image: NetworkImage("https://www.newhope.com/sites/newhope360.com/files/styles/article_featured_retina/public/plastic-bag-ban-new-york.jpg?itok=MY63Nxcr"),
                    ),
                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Color(0xffDF9A57)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom:15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0, right:20.0),
                        child: Text('Plastic Bag', style: TextStyle(fontSize: 20, fontFamily: 'Mulish', color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ),
      );
  }
}