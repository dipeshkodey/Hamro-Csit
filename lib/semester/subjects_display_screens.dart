import 'package:flutter/material.dart';
import 'package:hamro_csit_app/model/semester_model.dart';
import 'package:hamro_csit_app/semester/chapter_screens.dart';

class SubjectsDisplayScreens extends StatelessWidget {
  final String title;
  final List<Subject> subjects;
  const SubjectsDisplayScreens({super.key, required this.subjects, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff008D7F),
        title: Text("$title Semester",style: TextStyle(color: Colors.white),),
      
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> ChapterScreens(chapters:subjects[index].chapters,)));
              },
              child: Container(
                height: 70,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xff008D7F).withOpacity(0.2)
                  
                ),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 65,
                      color: Color(0xff008D7F),
                      child: Center(child: Text("${index+1}",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),)),
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(subjects[index].name,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                          Text(subjects[index].code),
              
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