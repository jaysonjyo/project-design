import 'package:flutter/material.dart';

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
            size: 26,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 29,
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Malak Idrissi",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Rabat, Morocco",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                CircleAvatar(
                  radius: 23,
                  child: Icon(
                    Icons.edit_outlined,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Hi! My name is Malak, i'm a community manager from Rabat, Morocco.",
            style: TextStyle(color: Colors.black54,fontSize: 16,
            fontWeight: FontWeight.w500),),
            SizedBox(height: 70,),
            Row(
              children: [
              Icon(Icons.notifications,color: Colors.black,),
              SizedBox(width: 40,),
              Text("Notifications",
                style: TextStyle(color: Colors.black,fontSize: 16,
                    fontWeight: FontWeight.w500),)

            ],),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.settings,color: Colors.black,),
                SizedBox(width: 40,),
                Text("General",
                  style: TextStyle(color: Colors.black,fontSize: 16,
                      fontWeight: FontWeight.w500),)

              ],),SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.person,color: Colors.black,),
                SizedBox(width: 40,),
                Text("Account",
                  style: TextStyle(color: Colors.black,fontSize: 16,
                      fontWeight: FontWeight.w500),)

              ],),SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.play_circle_sharp,color: Colors.black,),
                SizedBox(width: 40,),
                Text("About",
                  style: TextStyle(color: Colors.black,fontSize: 16,
                      fontWeight: FontWeight.w500),)

              ],)
          ],
        ),
      ),
    );
  }
}
