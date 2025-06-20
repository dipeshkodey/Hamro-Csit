

import 'package:flutter/material.dart';
import 'package:hamro_csit_app/csit_data.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                        "Profile",
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

            Padding(
              padding: const EdgeInsets.only(top: 15, right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dipesh stha",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "@dipeshstha",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Row(
                children: [
                  Icon(Icons.call, color: Colors.black),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("9848450584"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Row(
                children: [
                  Icon(Icons.book, color: Colors.black),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Student"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.black),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("dipeshshrestha@gmail.com"),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Container(
                height: 80,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xff008D7F).withOpacity(0.15),
                  border: Border.all(color: Color(0xff008D7F), width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lifetime Plan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                          ),
                          Text(
                            "This is for Lifetime",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "FREE",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              height: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "PURCHASE",
                              style: TextStyle(
                                color: Color(0xff008D7F),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
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

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 96,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("0",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w400),),
                        Text("Questions",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                      ],
                    ),
                    
                  ),
                  Container(
                    height: 100,
                    width: 96,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("0",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w400),),
                        Text("Answer",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 96,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("0",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w400),),
                        Text("Notes",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("0",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w400),),
                        Text("Others",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
              child: Container(
                height: 120,
                width: double.maxFinite,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, left: 15),
                      child: Text(
                        "Semester",
                        style: TextStyle(
                          color: Color(0xff008D7F),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Fourth Semester",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.arrow_drop_down, size: 30),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
              child: Container(
                height: 120,
                width: double.maxFinite,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Job Information",
                        style: TextStyle(
                          color: Color(0xff008D7F),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Show Job in main Screen",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.toggle_off, size: 40),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
              child: Container(
                height: 120,
                width: double.maxFinite,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Notification",
                        style: TextStyle(
                          color: Color(0xff008D7F),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Notification",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.toggle_off, size: 40),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 320,
                width: double.maxFinite,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Theme",
                        style: TextStyle(
                          color: Color(0xff008D7F),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "System Theme",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(Icons.arrow_drop_down, size: 35),
                        ),
                      ],
                    ),

                   Expanded(
                    
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal:35 ,vertical: 15,),
                       child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6,
                       mainAxisSpacing: 20,
                       crossAxisSpacing: 20,
                       childAspectRatio: 1), 
                       itemCount: colors.length,
                       itemBuilder: (context,index){
                        return CircleAvatar(
                          backgroundColor: colors[index]['color']
                       
                        );
                       }),
                     ),
                   )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
              child: Container(
                height: 125,
                width: double.maxFinite,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Download Manager",
                        style: TextStyle(
                          color: Color(0xff008D7F),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Clear All Data on Logout",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.toggle_off, size: 40),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Clear data",
                            style: TextStyle(
                              color: Color(0xff008D7F),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 35),

            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "More Menu",
                          style: TextStyle(
                            color: Color(0xff008D7F),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 25,),

                        Row(
                          children: [
                            Icon(Icons.share,color: Color(0xff008D7F),size: 20,),
                            SizedBox(width: 25,),
                            Text("Tell Your Friend",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        ),
                        SizedBox(height: 25,),

                        Row(
                          children: [
                            Icon(Icons.star,color: Color(0xff008D7F),size: 20,),
                            SizedBox(width: 25,),
                            Text("Rate Application",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        ),

                        SizedBox(height: 25,),

                        Row(
                          children: [
                            Icon(Icons.support,color: Color(0xff008D7F),size: 20,),
                            SizedBox(width: 25,),
                            Text("View Profile",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        ),

                        SizedBox(height: 25,),

                        Row(
                          children: [
                            Icon(Icons.star,color: Color(0xff008D7F),size: 20,),
                            SizedBox(width: 25,),
                            Text("Edit Profile",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        ),

                        SizedBox(height: 25,),

                        Row(
                          children: [
                            Icon(Icons.star,color: Color(0xff008D7F),size: 20,),
                            SizedBox(width: 25,),
                            Text("Switch Platform",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        ),

                         SizedBox(height: 25,),

                        Row(
                          children: [
                            Icon(Icons.star,color: Color(0xff008D7F),size: 20,),
                            SizedBox(width: 25,),
                            Text("About Us",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        ),

                         SizedBox(height: 25,),

                        Row(
                          children: [
                            Icon(Icons.star,color: Color(0xff008D7F),size: 20,),
                            SizedBox(width: 25,),
                            Text("Support",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        ),

                         SizedBox(height: 25,),

                        Row(
                          children: [
                            Icon(Icons.star,color: Color(0xff008D7F),size: 20,),
                            SizedBox(width: 25,),
                            Text("Privacy Policy",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        ),

                         SizedBox(height: 25,),

                        Row(
                          children: [
                            Icon(Icons.delete,color: Color(0xff008D7F),size: 20,),
                            SizedBox(width: 25,),
                            Text("Logout Account",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),)
                          ],
                        ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,)
            // SizedBox(
              
            //   height: 480,
            //   child: ListView.builder(
            //     physics: NeverScrollableScrollPhysics(),
            //     padding: EdgeInsets.zero,
            //     itemCount: profile.length,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         height: 50,
            //         color: Colors.white,
            //         child: Column(
            //           children: [
            //             // Text(
            //             //   "More Menu",
            //             //   style: TextStyle(
            //             //     color: Color(0xff008D7F),
            //             //     fontSize: 22,
            //             //     fontWeight: FontWeight.w600,
            //             //   ),
            //             // ),
            //             SizedBox(height: 25),
                    
            //             Row(
            //               children: [
            //                 Icon(profile[index]['image'], color: Color(0xff008D7F), size: 20),
            //                 SizedBox(width: 25),
            //                 Text(
            //                   profile[index]['text'],
            //                   style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 17,
            //                     fontWeight: FontWeight.w700,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(height: 0,)
            //           ],
            //         ),
                    
            //       );
                 
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
