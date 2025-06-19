import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hamro_csit_app/csit_data.dart';

class OnlineCompilers extends StatelessWidget {
  const OnlineCompilers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            width: double.maxFinite,
            color: Color(0xff008D7F),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Online Compilers",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 550,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: compilers.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: 180,
                    decoration: BoxDecoration(
                      border:Border.all(
                        color: Colors.black,
                        width: 0.15
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      
                      children: [
                        Image.asset(
                          compilers[index]['image'],
                          height: 70,
                          width: 55,
                        ),
                        Expanded(
                          child: Text(
                            compilers[index]['name'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
