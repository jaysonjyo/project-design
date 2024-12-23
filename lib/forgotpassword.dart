import 'package:flutter/material.dart';

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
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(2),side: BorderSide(width: 0.1,color: Colors.grey)
                  ),
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: TextField(
                    style:
                        TextStyle(color: Colors.black, decorationThickness: 0),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter the email address you used to create your account and \n             we will email you link to reset your password.",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.7),
                ),
                SizedBox(
                  height: 40,
                ),
                Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  elevation: 3,
                  color: Colors.blue,
                  child: Container(
                    width: 400,
                    height: 60,
                    child: Center(
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 14,
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
                                fontSize: 14,
                                color: Colors.black,
                                height: 1.1,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 13,
                                height: 1,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Container(
                                width: 23,
                                height: 1,
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
