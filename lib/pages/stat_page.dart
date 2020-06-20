import 'package:flutter/material.dart';
import 'package:covid_symptom_app/widgets/custom_appbar.dart';


class StatPage extends StatefulWidget {
  @override
  _StatPageState createState() => _StatPageState();
}

class _StatPageState extends State<StatPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(  
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          
        ],
      ),
    );
}
}

SliverToBoxAdapter _buildHeader(double screenHeight) {
  return SliverToBoxAdapter(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(205,0,205,75),
                color: Colors.blueGrey[700],
                child: Column(
                  children: <Widget>[
                    SizedBox(height: screenHeight * 0.155),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 15.0, 0.0, 0.0),
                  child: Text(
                    'Covid-19 stats overview',
                    style: TextStyle(
                      color: Colors.yellowAccent[700],
                      fontFamily: 'Montserrat',
                      fontSize: 22.0, 
                      fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                margin: const EdgeInsets.symmetric(
                  vertical: 60,
                  horizontal: 14,
                ),
                height: screenHeight*0.36,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                    color: Colors.blueGrey[700],
                    blurRadius: 4.0,
                    spreadRadius: 0.0,
                    )
                  ],
                  color: Colors.yellowAccent[700],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Container(
                    child: Text(
                      'Assam',
                      style: TextStyle(
                        fontFamily: 'Monterrsat',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700],

                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Confirmed',
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Recovered',
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.only(top: 10,),
                        child: Text(
                          'Deceased',
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                  ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10,bottom: 10),
                        child: Text(
                          '4904',
                          style: TextStyle(
                            color: Colors.red[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: Text(
                          '3039',
                          style: TextStyle(
                            color: Colors.green[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.only(top: 10, right: 30, bottom: 10),
                        child: Text(
                          '9',
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                  ],
                  ),
                  Divider(
                    color: Colors.grey,
                    ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Across India',
                      style: TextStyle(
                        fontFamily: 'Monterrsat',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700],

                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Confirmed',
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Recovered',
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Deceased',
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                  ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10,bottom: 10),
                        child: Text(
                          '4904',
                          style: TextStyle(
                            color: Colors.red[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: Text(
                          '3039',
                          style: TextStyle(
                            color: Colors.green[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.only(top: 10, right: 30, bottom: 10),
                        child: Text(
                          '9',
                          style: TextStyle(
                            color: Colors.blueGrey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                  ],
                  ),
                ],),
              ),
            ],
          ),
        )
      ],
    ),
  );
}