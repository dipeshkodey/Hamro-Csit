import 'package:flutter/material.dart';

class PlusScreen extends StatelessWidget {
  const PlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 90,
            width: double.maxFinite,
            color: Color(0xff008D7F),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.white),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text(
                      "Ask Question",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                        "Have a question from CSIT Syllabus",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                  ),
                  ],
                 )
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),

          

          


        ],
      ),
    );
  }
}