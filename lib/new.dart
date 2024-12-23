import 'package:flutter/material.dart';

class SingleGridView extends StatefulWidget {
  @override
  _SingleGridViewState createState() => _SingleGridViewState();
}

class _SingleGridViewState extends State<SingleGridView> {
  final List<String> items = List.generate(10, (index) => " $index TaskName");
  bool showAlert = false; // Flag to toggle the alert box

  void toggleAlertBox() {
    setState(() {
      showAlert = !showAlert;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single GridView with Stacked Alert"),
      ),
      body: Stack(
        children: [
          // Main GridView
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 4 / 4,
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
                              ? Center(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.add,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          )
                              : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.category,
                                size: 50,
                                color: Colors.blue,
                              ),
                              SizedBox(height: 8),
                              Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "0Task",
                                style: TextStyle(
                                  fontSize: 16,
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
              ),
            ],
          ),
          // Alert Box Overlay
          if (showAlert)
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 320,
                    child: Center(
                      child: Container(
                        width: 300,
                        height: 300,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 20,),
                            TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: 'Heading',
                              ),
                            ),
                            SizedBox(height: 26),
                            TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: 'Title',
                                hintStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: '0 task',
                                hintStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(

                    left: 330,
                    child: GestureDetector(
                      onTap: toggleAlertBox,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
        ],
      ),
    );
  }
}
