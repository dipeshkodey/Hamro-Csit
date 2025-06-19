import 'package:flutter/material.dart';
import 'package:hamro_csit_app/csit_data.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

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
                      "Articles",
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
          SizedBox(height: 8,),
      
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: articles.length,
              itemBuilder: (context,index){
              return Column(
                children: [
                Container(
                  height: 130,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 130,
                          width: 130,
                          color: Colors.black,
                          child: Image.asset("assets/screenshot.png",fit: BoxFit.fill,),
                  
                        ),
                      ),
                  
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,top: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(articles[index]['title'],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500,height: 1),),
                              Expanded(child: Text(articles[index]['subtitle'],style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)),
                                              
                            ],
                          ),
                        ),
                      )
                  
                    ],
                  ),
                ),
                ],
              );
            }),
          )
      
        ],
      ),
    );
  }
}