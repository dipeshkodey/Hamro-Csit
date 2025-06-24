import 'package:flutter/material.dart';
import 'package:hamro_csit_app/model/semester_model.dart';
import 'package:hamro_csit_app/pdf_viewer_screen.dart';

class ChapterScreens extends StatelessWidget {
  final List<Chapter> chapters;
  const ChapterScreens({super.key, required this.chapters});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff008D7F),
        title: Text("Chapters",style: TextStyle(color: Colors.white),),
      
      ),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>PdfViewerScreen(pdfs: chapters[index].pdfs)));
              },
              child: Container(
                height: 80,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.grey[200]
                 
                  
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                     radius: 25,
                     backgroundColor: Color(0xff008D7F),
                      child: Center(child: Text("${index+1}",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),)),
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(chapters[index].title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                          
              
                        ],
                                  
                      ),
                    )
              
                  ],
                ),
              ),
            ),
          );

      }),
    );
  }
}