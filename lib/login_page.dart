import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(MaterialApp(
  home: LoginPage(),
));

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
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
            padding: new EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
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
                                        onChanged: (String str){String username = str;},
                                        decoration: InputDecoration(
                                          border: new OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(70)),
                                            borderSide: BorderSide(width: 0, style: BorderStyle.none),
                                          ),
                                          filled: true,
                                          hintText: 'Enter email address',
                                          hintStyle: new TextStyle(color: Color(0xffB48C4A)),
                                          fillColor: Colors.white,
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: TextField(
                                      onChanged: (String str){String password = str;},
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
                                                child: Text(
                                                    'Login',
                                                    style: TextStyle(
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 17,
                                                      color: Color(0xffFFF4E1),
                                                    )
                                                ),
                                              ),
                                            ),
                                          )
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