import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Eco Comet',
        theme: ThemeData(
          fontFamily: 'Mulish',
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffdf9a57),
              shadowColor: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              padding: new EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
            ),
          ),
        ),
        home: Scaffold(
            backgroundColor: Color(0xffa9e5bb),
            body: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Column>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/logo.png',
                        width: 320,
                        height: 320,
                      ),
                      Container(
                          padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Your companion for sustainability!',
                          style: TextStyle(fontSize: 20,),
                        ),
                      ),

                      ElevatedButton(
                        child: Text('BEGIN'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginPage())
                          );
                        },
                      ),
                    ],
                  )
                ]
            ),

        )
    );
  }
}