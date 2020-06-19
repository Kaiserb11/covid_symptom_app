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
    child: Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        color: Colors.blueGrey[700],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[   
          SizedBox(height: screenHeight*0.03,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Covid-19 Cases Overview',
                style: TextStyle(
                  color: Colors.yellowAccent[700],
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  fontFamily:'Montserrat',
                ),
              )
            ],
            ),
          SizedBox(height: screenHeight*0.1,),
        ],
      ),
    ),
  );
}