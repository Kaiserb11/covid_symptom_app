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
                padding: EdgeInsets.fromLTRB(205,0,205,70),
                color: Colors.blueGrey[700],
                child: Column(
                  children: <Widget>[
                    SizedBox(height: screenHeight * 0.15),
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
                padding: EdgeInsets.fromLTRB(16, 35, 0, 0),
                margin: const EdgeInsets.symmetric(
                  vertical: 70,
                  horizontal: 14,
                ),
                height: screenHeight*0.30,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent[700],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}