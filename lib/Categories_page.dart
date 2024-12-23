import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mimo/Settings_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final List<String> items = List.generate(10, (index) => "$index TaskName");
  bool showAlert = false; // Flag to toggle the alert box

  void toggleAlertBox() {
    setState(() {
      showAlert = !showAlert;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding:  EdgeInsets.only(left: 10.w),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const Settings()),
              );
            },
            child:  CircleAvatar(
              radius: 20.r,
            ),
          ),
        ),
        centerTitle: true,
        title:  Text(
          "Categories",
          style: TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions:  [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(height: 30.h),
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(2.r),
                  side:  BorderSide(width: 0.1.w, color: Colors.grey),
                ),
                elevation: 3,
                color: Colors.white,
                child: Container(
                  width: 500,
                  height: 100,
                  padding:  EdgeInsets.all(8.0.sp),
                  child: Row(
                    children: [
                       CircleAvatar(radius: 23.r),
                       SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Text(
                            '"The memories is a shield and life helper."',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'Tamim AI-Barghouti',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(8.0.sp),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                            childAspectRatio: 1,
                          ),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () => index == 0 ? toggleAlertBox() : null,
                              child: Card(
                                color: Colors.white,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: index == 0
                                    ?  Center(
                                  child: CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.add,
                                      size: 25.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                                    : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                     Icon(
                                      Icons.category,
                                      size: 50.sp,
                                      color: Colors.blue,
                                    ),
                                     SizedBox(height: 8.h),
                                    Text(
                                      items[index],
                                      style:  TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                     Text(
                                      "0Task",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  if (showAlert)
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 400.w,
                            height: 320.h,
                            alignment: Alignment.center,
                            child: Container(
                              width: 320.w,
                              height: 270.h,
                              padding:  EdgeInsets.all(16.sp),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.r),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10.r,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children:  [
                                  SizedBox(height: 20.h),
                                  TextField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Heading',
                                    ),
                                  ),
                                  SizedBox(height: 26.h),
                                  TextField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Title',
                                      hintStyle: TextStyle(
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  TextField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: '0 task',
                                      hintStyle: TextStyle(
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.h,
                            left: 300.w,
                            child: GestureDetector(
                              onTap: toggleAlertBox,
                              child:  CircleAvatar(
                                radius: 15.r,
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 18.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
