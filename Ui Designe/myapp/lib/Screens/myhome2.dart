
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class myhome2 extends StatefulWidget {
  const myhome2({super.key});

  @override
  State<myhome2> createState() => _myhome2State();
}

class _myhome2State extends State<myhome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 205,
                  width:130,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                Column(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 10,),
                       Container(
                        height: 150,
                        width: 200,
                        color: Colors.red,
                      )
                    ],
                  ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 300,
                  color: Colors.green,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}