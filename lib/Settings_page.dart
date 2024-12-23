import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mimo/Categories_page.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(onTap: (){
          Navigator.of(context).pop();
        },
          child: Icon(
            Icons.arrow_back,
            size: 26.sp,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 26.r,
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Malak Idrissi",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 2.h
                      ,
                    ),
                    Text(
                      "Rabat, Morocco",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 110.w,
                ),
                CircleAvatar(
                  radius: 20.r,
                  child: Icon(
                    Icons.edit_outlined,
                    color: Colors.white,size: 19.sp,
                  ),
                  backgroundColor: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
                "Hi! My name is Malak, i'm a community manager from Rabat, Morocco.",
            style: TextStyle(color: Colors.black54,fontSize: 15.sp,
            fontWeight: FontWeight.w500),),
            SizedBox(height: 60.h,),
            Row(
              children: [
              Icon(Icons.notifications,color: Colors.black,),
              SizedBox(width: 40.w,),
              Text("Notifications",
                style: TextStyle(color: Colors.black,fontSize: 16.sp,
                    fontWeight: FontWeight.w500),)

            ],),
            SizedBox(height: 25.h,),
            Row(
              children: [
                Icon(Icons.settings,color: Colors.black,),
                SizedBox(width: 40.w,),
                Text("General",
                  style: TextStyle(color: Colors.black,fontSize: 16.sp,
                      fontWeight: FontWeight.w500),)

              ],),SizedBox(height: 25.h,),
            Row(
              children: [
                Icon(Icons.person,color: Colors.black,),
                SizedBox(width: 40.w,),
                Text("Account",
                  style: TextStyle(color: Colors.black,fontSize: 16.sp,
                      fontWeight: FontWeight.w500),)

              ],),SizedBox(height: 25.h,),
            Row(
              children: [
                Icon(Icons.play_circle_sharp,color: Colors.black,),
                SizedBox(width: 40.w,),
                Text("About",
                  style: TextStyle(color: Colors.black,fontSize: 16.sp,
                      fontWeight: FontWeight.w500),)

              ],)
          ],
        ),
      ),
    );
  }
}
