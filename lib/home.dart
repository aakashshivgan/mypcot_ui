import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
// import 'package:example/blue_card.dart';
// import 'package:example/green_card.dart';
// import 'package:example/orange_card.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'blue_card.dart';
import 'green_card.dart';
import 'orange.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var safePadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 30.h,
            width: 40.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.24),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                  offset: Offset(
                    0.0,
                    0.0,
                  ),
                )
              ],
            ),
            child: SvgPicture.asset(
                "assets/📍 Leading Icon l Use High Emphasis.svg"),
          ),
        ),
        actions: [
          Padding(
            // padding: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.24),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  )
                ],
              ),
              child: SvgPicture.asset("assets/Group 916.svg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.24),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                      offset: Offset(
                        0.0,
                        0.0,
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset("assets/Group 917.svg"),
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 6, right: 6, top: 5, bottom: 5),
            child: imageView(),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.3,
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Group 910.svg"),
                  Text(
                    "Home",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff2c3d63),
                      fontWeight: FontWeight.w400,
                    )),
                    // TextStyle(color: Color(0xff2c3d63)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Group 912.svg"),
                  Text(
                    "Customers",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff2c3d63),
                      fontWeight: FontWeight.w400,
                    )),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Group 913.svg"),
                  Text(
                    "Khata",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff2c3d63),
                      fontWeight: FontWeight.w400,
                    )),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Group 914.svg"),
                  Text(
                    "Orders",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff2c3d63),
                      fontWeight: FontWeight.w400,
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff2c3d63),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          height: size.height - safePadding,
          width: size.width,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          "Welcome,Mypcot !!",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: 20.sp,
                            color: const Color(0xff2c3d63),
                            fontWeight: FontWeight.w500,
                          )),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "  here is my dashboard...",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: 12.sp,
                            color: const Color(0xff2c3d63),
                            fontWeight: FontWeight.w400,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.24),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                        ),
                        child: SvgPicture.asset("assets/Group 922.svg")),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    BlueCard(),
                    GreenCard(),
                    OrangeCard(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "March 17,2023",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: 13.sp,
                                color: const Color(0xff2c3d63),
                                fontWeight: FontWeight.w400,
                              )),
                            ),
                            Text(
                              "Today",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff2c3d63),
                                fontWeight: FontWeight.w800,
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.14),
                                  blurRadius: 5.0,
                                  spreadRadius: 4.0,
                                  offset: Offset(
                                    1.0,
                                    1.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 16.w),
                            child: Row(
                              children: [
                                Text(
                                  "Timeline",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xff2c3d63),
                                    fontWeight: FontWeight.w800,
                                  )),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                const Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.17),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(
                                    1.0,
                                    1.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 5.w),
                            child: Row(
                              children: [
                                const Icon(Icons.calendar_today_outlined),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "JAN,2021",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff2c3d63),
                                    fontWeight: FontWeight.w400,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.h),
                    ),
                    DatePicker(
                      DateTime.now(),
                      width: 60,
                      height: 80,
                      // controller: _controller,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: Colors.white,
                      selectedTextColor: Colors.green,
                      inactiveDates: [
                        DateTime.now().add(const Duration(days: 3)),
                        DateTime.now().add(const Duration(days: 4)),
                        DateTime.now().add(const Duration(days: 7))
                      ],
                      onDateChange: (date) {
                        // New date selected
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.24),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                            offset: Offset(
                              1.0,
                              1.0,
                            ),
                          )
                        ],
                        // border: Border.all(width: 0.1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    width: double.infinity,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, top: 15.h, bottom: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "New order created",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  color: const Color(0xff2c3d63),
                                  fontWeight: FontWeight.w800,
                                )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.h,
                                  bottom: 20.h,
                                ),
                                child: Text(
                                  "New order created with order",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    fontSize: 17.sp,
                                    color: const Color(0xff2c3d63),
                                    fontWeight: FontWeight.w400,
                                  )),
                                ),
                              ),
                              Text(
                                "09:00 AM",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xffFE804e),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: Color(0xffFE804e),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5.w),
                            child: Container(
                              width: 80.w,
                              height: 80.0.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffFE804e),
                                // image: DecorationImage(
                                //   image: NetworkImage(
                                //       "https://wikibio.in/wp-content/uploads/2018/07/Katrina-Kaif.jpg"),
                                //   fit: BoxFit.cover,
                                // ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0.r)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0.r),
                                child: SvgPicture.asset("assets/Group 900.svg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget imageView() {
    return Container(
      width: 50,
      height: 50.0,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: const DecorationImage(
          image: AssetImage('assets/celeb/Deepika.jpg'),
          fit: BoxFit.contain,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
      ),
    );
  }
}
