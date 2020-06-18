import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ratescreen/list.dart';

void main() {
  runApp(Rate());
}

class Rate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rate Card'),
          backgroundColor: Colors.blue,
          leading: Icon(Icons.arrow_back),
        ),
        body: SafeArea(child: RtScreen()),
      ),
    );
  }
}

class RtScreen extends StatefulWidget {
  @override
  _RtScreenState createState() => _RtScreenState();
}

class _RtScreenState extends State<RtScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
            //color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text(
                      'Delivery Address',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 8.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.check,
                              size: 8.0,
                              color: Colors.white,
                            ),
                            radius: 6,
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Text(
                            'Chalakudi, Kerala',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Change',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                    fontSize: 12.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
//            Divider(
//              thickness: 5.0,
//            ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          flex: 10,
          child: SingleChildScrollView(
            child: Container(
              child: MyExpansion(),
            ),
          ),
        )
      ],
    );
  }
}
