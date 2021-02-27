import 'package:eco_comet/ImagePage.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() => runApp(MaterialApp(
  home: ResultPage(),
));

class ResultPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Padding(
              padding: EdgeInsets.only(top: 40),
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
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Color(0xffDF9A57)),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, bottom:50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0, right:20.0),
                          child: Text('Recyclable', style: TextStyle(fontSize: 20, fontFamily: 'Mulish', color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0, right:20.0),
                          child: Text('Plastic', style: TextStyle(fontSize: 20, fontFamily: 'Mulish', color: Colors.white)),
                        ),
                      ],
                    ),
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