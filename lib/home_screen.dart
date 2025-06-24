import 'package:flutter/material.dart';
import 'package:hamro_csit_app/csit_data.dart';
import 'package:hamro_csit_app/data/semester_data.dart';
import 'package:hamro_csit_app/semester/subjects_display_screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff008D7F),
      //   toolbarHeight: ,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xff008D7F),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi Dipesh,",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Let's Start Learning",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.person,
                              color: Color(0xff008D7F),
                              size: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.logout,
                                color: Color(0xff008D7F),
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: InputBorder.none,
                              hintText: "Seach Question",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.menu_book_sharp,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 200,
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),

                  itemCount: semesterData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (_) => SubjectsDisplayScreens(
                                  subjects: semesterData[index].subjects,
                                  title: semesterData[index].semester,
                                ),
                          ),
                        );
                      },
                      child: Container(
                        color: Color(0xff008D7F).withOpacity(0.15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              semesterData[index].image,
                              height: 30,
                              width: 30,
                              color: Color(0xff008D7F),
                            ),

                            Text(
                              semesterData[index].semester,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                            Text(
                              "Semester",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, right: 17, left: 17),
              child: Container(
                height: 70,
                width: double.maxFinite,
                color: Color(0xff008D7F).withOpacity(0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Want Video Updates",
                        style: TextStyle(
                          color: Color(0xff008D7F),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(width: 0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "SUBSCRIBE",
                            style: TextStyle(
                              color: Color(0xff008D7F),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Your Subjects",
                    style: TextStyle(
                      color: Color(0xff008D7F),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xff008D7F).withOpacity(0.15),
                        child: Image(
                          image: AssetImage("assets/first.png"),
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xff008D7F).withOpacity(0.15),
                        child: Icon(Icons.search, color: Color(0xff008D7F)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 410,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 15,
                      left: 15,
                    ),
                    child: Container(
                      width: double.maxFinite,
                      color: Color(0xff008D7F).withOpacity(0.15),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            color: Color(0xff008D7F),
                            child: Padding(
                              padding: const EdgeInsets.all(25),
                              child: Text(
                                data[index]['index'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text(
                                    data[index]['name'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    data[index]['id'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Recent Notices",
                    style: TextStyle(
                      color: Color(0xff008D7F),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xff008D7F).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xff008D7F),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 500,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: information.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 120,
                    width: double.maxFinite,
                    decoration: BoxDecoration(color: Colors.white),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xff008D7F),
                                child: Icon(
                                  information[index]['image'],
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      information[index]['text'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      information[index]['date'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xff008D7F), thickness: 1),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
