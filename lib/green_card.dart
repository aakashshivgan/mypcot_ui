import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:sparkline/sparkline.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GreenCard extends StatefulWidget {
  const GreenCard({Key? key}) : super(key: key);

  @override
  _GreenCardState createState() => _GreenCardState();
}

class _GreenCardState extends State<GreenCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: 20.h, bottom: 15.h, right: 10.w, left: 10.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: const Color(0xff31ce95),
            ),
            width: double.infinity,
            // height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 30.h, bottom: 30.h),
                  child: Container(
                      width: 120.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(200.r)),
                      child: SvgPicture.asset(
                          "assets/customers-illustration-image.svg")),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, bottom: 10.h),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffec316a))),
                    child: Text(
                      "View Customers",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                        fontSize: 15.sp,
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
                    color: const Color(0xffec316a),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 4.h, right: 5.w, left: 5.w),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 30.h),
                          child: Row(
                            children: [
                              Text(
                                "15",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                )),
                              ),
                              Text(
                                "  New Customers",
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
          left: 210.w,
          bottom: 115.h,
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: showGraph()
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     right: 10,
                  //     left: 10,
                  //   ),
                  //   child: Column(
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(
                  //             top: 17, right: 10, left: 10),
                  //         child: Row(
                  //           children: [
                  //             Text(
                  //               "10",
                  //               style: TextStyle(
                  //                   fontSize: 25, fontWeight: FontWeight.bold),
                  //             ),
                  //             Text(
                  //               "   Active",
                  //               style: TextStyle(color: Colors.grey),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(bottom: 10),
                  //         child: Text(
                  //           "Subscriptions",
                  //           style: TextStyle(),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  ),
            ],
          ),
        ),
        Positioned(
          top: 50.h,
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
          top: 50.h,
          left: 225.w,
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
        ),
        Positioned(
          top: 50.h,
          left: 260.w,
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
          left: 190.w,
          bottom: 45.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 16.w,
                    left: 5.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.h,
                          right: 16.w,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "10",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: 25.sp,
                                // color: Colors.white,
                                fontWeight: FontWeight.w800,
                              )),
                            ),
                            Text(
                              " Active",
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
                        padding: const EdgeInsets.only(bottom: 12, left: 10),
                        child: Text(
                          "Customers",
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
        Positioned(bottom: 60.h, left: 270.w, child: imageView()),
        Positioned(bottom: 60.h, left: 290.w, child: imageView()),
        Positioned(bottom: 60.h, left: 310.w, child: imageView()),
      ],
    );
  }

  Widget showGraph() {
    math.Random random = math.Random();

    List<double> _generateRandomData(int count) {
      List<double> result = <double>[];
      for (int i = 0; i < count; i++) {
        result.add(random.nextDouble() * 100);
      }
      return result;
    }

    var data = _generateRandomData(5);
    return SizedBox(
      height: 90.h,
      width: 120.w,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Sparkline(
              data: data,
              lineColor: Colors.green,
              fillMode: FillMode.below,
              fillColor: Colors.green[100],
              pointSize: 5.0,
              pointColor: Colors.amber,
            ),
          ),
          Positioned(
            left: 10.w,
            top: 15.h,
            child: Row(
              children: [
                Text(
                  "1.8%",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10.w,
                ),
                const Icon(
                  Icons.arrow_upward,
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget imageView() {
  return Container(
    width: 30.w,
    height: 30.h,
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
  );
}
