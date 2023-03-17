import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BlueCard extends StatefulWidget {
  const BlueCard({Key? key}) : super(key: key);

  @override
  _BlueCardState createState() => _BlueCardState();
}

class _BlueCardState extends State<BlueCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.all(15.h),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: const Color(0xff33a1cc),
            ),
            width: double.infinity,
            height: 250.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    top: 30.h,
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(120.r)),
                      child: SvgPicture.asset(
                          "assets/orders-illustration-image.svg")),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 40.w),
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
                            MaterialStateProperty.all(const Color(0xffFE804e))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Text(
                        "Orders",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 180.w,
          bottom: 90.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 7, right: 10, left: 10),
                      child: Row(
                        children: [
                          Text(
                            "02",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                              fontSize: 25.sp,
                              color: Colors.black87,
                              fontWeight: FontWeight.w800,
                            )),
                          ),
                          Text(
                            "   pending",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                              fontSize: 20.sp,
                              color: const Color.fromARGB(255, 92, 108, 143),
                              fontWeight: FontWeight.w400,
                            )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Text(
                        "Orders from",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xff2c3d63),
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(bottom: 55.h, left: 210.w, child: imageView()),
        Positioned(bottom: 55.h, left: 240.w, child: imageView()),
        Positioned(
          left: 170.w,
          bottom: 200.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFE804e),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                          padding:
                              EdgeInsets.only(top: 4.h, right: 5.w, left: 5.w),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Text(
                              "You have 3 active \n    orders from",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              )),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(top: 55.h, left: 190.w, child: imageView()),
        Positioned(top: 55.h, left: 215.w, child: imageView()),
        Positioned(top: 55.h, left: 240.w, child: imageView()),
      ],
    );
  }

  Widget imageView() {
    return Container(
      width: 50.w,
      height: 50.h,
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
    );
  }
}
