import 'package:flutter/material.dart';
import 'package:instagram_ui/Home_Screen.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.pinkAccent, Colors.deepOrangeAccent],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Instagram",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 55.0,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 200.0,
              ),
              //Using Card Widgets for User Name Nad Password
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.5),
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    prefixIcon: Icon(Icons.email),
                    hintText: "Username Or Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.5),
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                      ),
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  )),
              ButtonTheme(
                // Its Use Is To Increase the Size of RaisedButton
                minWidth: 380.0,
                height: 55.0,
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homescreen())),
                  child: Text(
                    "Log In",
                    textAlign: TextAlign.center,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

              //Horizontal Divider line with OR Text between Views Widget

              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0, right: 15.0),
                      child: Divider(
                        height: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.0, right: 10.0),
                      child: Divider(
                        color: Colors.white,
                        height: 30.0,
                      ),
                    ),
                  )
                ],
              ),
              TextButton(
                // Text Button
                onPressed: () => print("LogIn / SignUp With Facebook"),
                child: Text(
                  "LogIn / SignUp With Facebook",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 25.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
