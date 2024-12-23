import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mimo/main.dart';

import 'Categories_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  "Create an Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(2.r),
                      side: BorderSide(width: 0.1.w, color: Colors.grey)),
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: TextField(
                    style:
                        TextStyle(color: Colors.black, decorationThickness: 0.sp),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h)),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(2.r),
                      side: BorderSide(width: 0.1.w, color: Colors.grey)),
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: TextField(
                    style:
                        TextStyle(color: Colors.black, decorationThickness: 0.sp),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h)),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(2.r),
                      side: BorderSide(width: 0.1.w, color: Colors.grey)),
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: TextField(
                    style:
                        TextStyle(color: Colors.black, decorationThickness: 0.sp),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h)),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(2.r),
                      side: BorderSide(width: 0.1.w, color: Colors.grey)),
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: TextField(
                    style:
                        TextStyle(color: Colors.black, decorationThickness: 0.sp),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h)),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const CategoriesPage()));
                  },
                  child: Card(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    elevation: 3,
                    color: Colors.blue,
                    child: Container(
                      width: 400.w,
                      height: 50.h,
                      child: Center(
                        child: Text(
                          "CONTINUE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                      SizedBox(width: 2.w,),
                    GestureDetector(

                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                height: 1.1.h,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 13.w,
                                height: 1.h,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 9.w,
                              ),
                              Container(
                                width: 10.w,
                                height: 1.h,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
