import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eco_comet/nav_bar.dart';
import 'package:flutter/material.dart';
import 'ImagePage.dart';
import 'main.dart';

void main() => runApp(MaterialApp(
  home: LoginPage(),
));

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  signIn(String user, String pass) async {
    Map data = {
      'user': user,
      'pass': pass
    };
    var jsonData = null;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var response = await http.post(
        'https://hack-utd-306121.uc.r.appspot.com/login',
        body: data
    );
    if (response.statusCode == 200) {
      jsonData = json.decode(response.body);
      setState(() {
        sharedPreferences.setString("token", jsonData('token'));
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => NavigationBar()), (Route<dynamic> route) => false);
      });
    }
    else {
      print(response.body);
    }
  }

  String username, password;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Mulish',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffdf9a57),
            shadowColor: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            padding: new EdgeInsets.only(left:30, right:30, top:15, bottom:15),
          ),
        ),
      ),

      home: Scaffold(
          backgroundColor: Color(0xffa9e5bb),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Column>[
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Column>[
                      Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 50, 0, 5),
                              child: Image.asset(
                                'assets/logo.png',
                                width: 270,
                                height: 270,
                              ),
                            ),
                            SizedBox(
                              width:300,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: TextField(
                                        onChanged: (String str){username = str;},
                                        decoration: InputDecoration(
                                          border: new OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(70)),
                                            borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                          ),
                                          filled: true,
                                          hintText: 'Enter username',
                                          hintStyle: new TextStyle(color: Color(0xffB48C4A)),
                                          fillColor: Colors.white,
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: TextField(
                                      onChanged: (String str){password = str;},
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: new OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(70)),
                                          borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                        ),
                                        filled: true,
                                        hintText: 'Enter password',
                                        hintStyle: new TextStyle(color: Color(0xffB48C4A)),
                                        fillColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: SizedBox(
                                              height: 50,
                                              width: 120,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  signIn(username, password);
                                                },
                                                child: Text(
                                                    'Login',
                                                    style: TextStyle(
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 17,
                                                      color: Color(0xffFFF4E1),

                                                ),
                                              ),
                                            ),
                                          )
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]
                      )
                    ]
                ),
              ]
          ),
        )
      )
    );
  }
}