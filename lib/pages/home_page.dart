import 'package:flutter/material.dart';
import 'package:covid_symptom_app/widgets/custom_appbar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildTestReport(screenHeight)
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
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          SizedBox(height: screenHeight*0.01,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Worried about being COVID+ ?',
                style: TextStyle(
                  color: Colors.yellowAccent[700],
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                ),
              )
            ],
            ),
            SizedBox(height: screenHeight*0.02,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Take our test to know more',
                style: TextStyle(
                  color: Colors.yellowAccent[700],
                  fontSize: 17,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
            ),
            SizedBox(height: screenHeight * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton.icon(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  onPressed: () {},
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  icon: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Call Now',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textColor: Colors.white,
                ),
                FlatButton.icon(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  onPressed: () {},
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Take Test',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textColor: Colors.white,
                ),
              ],
            ),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter _buildTestReport(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
       margin: const EdgeInsets.symmetric(
         vertical: 20,
         horizontal: 12,
       ),
       padding: const EdgeInsets.all(10),
       height: screenHeight*0.15,
       decoration: BoxDecoration(
         color: Colors.yellowAccent[700],
         borderRadius: BorderRadius.circular(20),
       ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: screenHeight*0.01,),
        Text(
          'PREVIOUS TEST SUMMARY',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey[700]
          ),
        ),
      ],
    ),
    ),
  );
}