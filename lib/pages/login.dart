import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:covid_symptom_app/pages/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(140, 80, 0, 0),
                child: Text("welcome",
                  style: TextStyle(
                    fontFamily: 'bebas',
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(60, 150, 0, 0),
                child:  Text(
                  "to the fight against covide 19",
                    style: TextStyle(
                      fontFamily: 'bebas',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                    ),
                ),
              )
            ],),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(60, 80, 60, 0),
            child: Column(children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 18),
                  hintText: 'email',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                  )
                ),
              ),
              SizedBox(height:15),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 18),
                  hintText: 'password',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                  )
                ),
                obscureText: true,
              ),
              SizedBox(height: 15,),
              Container(
                alignment: Alignment(1.0, 0.0),
                padding: EdgeInsets.only(top: 25, left: 20),
                child: InkWell(
                  child: Text(
                    "FORGOT PASSWORD",
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "new to our app ?",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 20, ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                      },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        
                      ),
                    )
                  )
              ],
              )     
            ],
            ),
          )
        ],
      )
    );
  }
}
  