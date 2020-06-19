import 'package:flutter/material.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage>{
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
                      color: Colors.green[600]
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
                    borderSide: BorderSide(color: Colors.green[600])
                  )
                ),
              ),
              SizedBox(height:20),
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
                    borderSide: BorderSide(color: Colors.green[600])
                  )
                ),
                obscureText: true,
              ),
              
              SizedBox(height: 60.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green[600],
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'SIGNUP',
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
                    "alredy have an account ?",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 20, ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green[600],
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