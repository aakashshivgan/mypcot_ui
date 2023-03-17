import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrangeCard extends StatefulWidget {
  const OrangeCard({Key? key}) : super(key: key);

  @override
  _OrangeCardState createState() => _OrangeCardState();
}

class _OrangeCardState extends State<OrangeCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: 20.h, bottom: 35.h, right: 10.w, left: 10.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffdcb223),
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 30.h, bottom: 30.h),
                  child: Container(
                      width: 120.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(200.r)),
                      child: SvgPicture.asset(
                          "assets/subscriptions-illustration-image.svg")),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff223dc4))),
                    child: Text(
                      "Subscriptions",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 170.w,
          bottom: 200.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff223dc4),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 4.h, right: 13.w, left: 13.w),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 30.r),
                          child: Row(
                            children: [
                              Text(
                                "03",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Text(
                                "    deliveries",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                )),
                              )
                            ],
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
        Positioned(
          left: 200.w,
          top: 100.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 10.w,
                    left: 10.w,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 17, right: 10, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "10",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: 25.sp,
                                color: const Color(0xff2c3d63),
                                fontWeight: FontWeight.w800,
                              )),
                            ),
                            Text(
                              "   Active",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: 13.sp,
                                color: const Color(0xff2c3d63),
                                fontWeight: FontWeight.w800,
                              )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Subscriptions",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: 13.sp,
                            color: const Color(0xff2c3d63),
                            fontWeight: FontWeight.w800,
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 60.h,
          left: 190.w,
          child: Container(
            width: 50,
            height: 50.0,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('assets/celeb/aish.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          top: 60.h,
          left: 215.w,
          child: Container(
            width: 50,
            height: 50.0,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('assets/celeb/shahrukh.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          top: 60.h,
          left: 245.w,
          child: Container(
            width: 50,
            height: 50.0,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('assets/celeb/Deepika.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          left: 200.w,
          bottom: 50.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r)),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 10.w,
                    left: 10.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10.h, right: 10.w, left: 10.w),
                        child: Row(
                          children: [
                            Text(
                              "119",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: 25.sp,
                                color: const Color(0xff2c3d63),
                                fontWeight: FontWeight.w800,
                              )),
                            ),
                            Text(
                              "   pending",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: 13.sp,
                                color: const Color(0xff2c3d63),
                                fontWeight: FontWeight.w800,
                              )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12, left: 20),
                        child: Text(
                          "Deliveries",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: 13.sp,
                            color: const Color(0xff2c3d63),
                            fontWeight: FontWeight.w800,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget positionWidget(double top, right, left, bottom) {
    return Positioned(
      top: top,
      left: left,
      // top: 50,
      // left: 215,
      child: Container(
        width: 50,
        height: 50.0,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: AssetImage('assets/celeb/salman.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
        ),
      ),
    );
  }
}
