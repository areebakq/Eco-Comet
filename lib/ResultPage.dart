import 'package:eco_comet/ImagePage.dart';
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
                      child: Container(
                          padding:
                          height:54,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          )
                      )
                  ),
                ]
              )
            ),

            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-60,
                    height: 300,
                    decoration: BoxDecoration(
                       image: DecorationImage(
                         fit: BoxFit.fill,
                        image: NetworkImage("https://pngimg.com/uploads/plastic_bag/plastic_bag_PNG40.png"),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
      );
  }
}