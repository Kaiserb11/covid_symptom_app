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
        color: Colors.blueGrey[900],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'AYUSH BHARAT',
            style: TextStyle(
              color: Colors.yellowAccent[700],
              fontFamily: 'Montserrat',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight*0.03,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Worried about being COVID+ ?',
                style: TextStyle(
                  color: Colors.yellowAccent[700],
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                ),
              )
            ],
            ),
            SizedBox(height: screenHeight*0.01,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'If you feel sick with any COVID-19 symptoms, please take our test immediately or call the authorities...',
                style: TextStyle(
                  color: Colors.yellowAccent[700],
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                ),
              )
            ],
            ),
            SizedBox(height: screenHeight * 0.03),
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

    ),
  );
}