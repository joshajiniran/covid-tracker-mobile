import 'package:flutter/material.dart';
import 'package:CovidTracker/components/custom_card.dart';

const main_tab = ['Country', 'State', 'City', 'Worldwide'];
const custom_tab = ['Tracker', 'Symptoms'];

class TrackerPage extends StatefulWidget {
  @override
  _TrackerPageState createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/dp.png"),
            radius: 40.0,
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () => print("Clicked"),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              padding: EdgeInsets.all(4.0),
              height: 40.0,
              width: 66.0,
              decoration: BoxDecoration(
                color: Color(0xFFCBC1DB),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/country_flag.png"),
                      // radius: 32.0,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 141,
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFCFE3FC),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                Positioned(
                  left: 40,
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/images/doctor.png"),
                      SizedBox(width: 10),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            width: 200,
                            child: Text(
                              'Know safety tips and precaution from top Doctors.',
                            ),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(
                              onPressed: () {},
                              child: Icon(Icons.arrow_forward),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: EdgeInsets.all(4.0),
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xFFF49E6F),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Center(child: Text('${custom_tab[0]}')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Center(child: Text('${custom_tab[1]}')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: main_tab
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: Text(e,
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold)),
                        ))
                    .toList(),
              ),
            ),
            SizedBox(height: 30),
            Wrap(),
          ],
        ),
      ),
    );
  }
}
