import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key); // Fix the constructor and its super call

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        title: Row(
          children: [
            Text(
              "codefive",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.verified_outlined,
              color: Colors.blue,
            ),
            SizedBox(width: 30,),
            Icon(Icons.notification_add,color: Colors.red,),

            SizedBox(width: 30,),
            Icon(Icons.more_horiz),

          ],
        ),

        actions: [], // You can add actions here
        backgroundColor: Colors.transparent,
      ),


      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,

                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Row(

                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                     children: [
                       Text('1060 '),
                       Text('followers'),

                     ],
                   ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Text('1060 '),
                        Text('followers'),

                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Text('1060 '),
                        Text('followers'),

                      ],
                    ),


                  ],
                ),

              ],

            ),
            SizedBox(height: 10,),
            Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("jeff mungai"),
                ],

              ),
            ),
            SizedBox(height: 10,),
            Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Machine Learning engineer"),
                ],

              ),
            ),
            SizedBox(height: 10,),
            Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Android Developer"),
                ],

              ),
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 95),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                    ),
                  ],

                ),
                Container(
                  margin: EdgeInsets.only(left: 100),

                  child: Column(

                    children: [
                      Text("With Tech nothing is impossible"),
                    ],

                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: 90,
                  child: ElevatedButton(onPressed: (){

                  }, child: Text("Follow")),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 90,
                  child: ElevatedButton(onPressed: (){

                  }, child: Text("Follow")),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 90,
                  child: ElevatedButton(onPressed: (){

                  }, child: Text("Follow")),
                ),
                Container(
                  width: 90,
                  child: Icon(Icons.person),
                )



              ],
            )



            // Add your widgets inside the Column
          ],

        ),

      ),
    );
  }
}
