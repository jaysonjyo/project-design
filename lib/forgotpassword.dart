import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({super.key});

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
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
                  "Forgot Password",
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(2.r),side: BorderSide(width: 0.1.w,color: Colors.grey)
                  ),
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
                  height: 10.h,
                ),
                Text(
                  "Enter the email address you used to create your account\n     and we will email you link to reset your password.",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.7.h),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                  elevation: 3,
                  color: Colors.blue,
                  child: Container(
                    width: 400.w,
                    height: 60.h,
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
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                    //  SizedBox(width: 5,),
                    TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                height: 1.1.h,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
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
                                width: 23.w,
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
          ),
        ],
      ),
    );
  }
}
