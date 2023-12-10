import 'package:flutter/material.dart';
import 'package:votersapp/Login.dart';
import 'package:votersapp/Signup.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(


        child: Column(
          children: [
            SizedBox(height: 100,),

            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("We",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),
                  Icon(Icons.how_to_vote,color: Colors.white,size: 40,),
                  Text("Vote",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.white),)
                ],

              ),

            ),
            SizedBox(height: 50,),
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Participate in university elections easily",
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),)
                  
                ],
              ),

            ),
            SizedBox(height: 80,),
            Container(

              width: 400, // Increase the width as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Signup()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        minimumSize: Size(400, 60)
                      ),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50 ,),
            Container(

              width: 400, // Increase the width as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));

                        
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Colors.white, width: 2),
                          ),
                          minimumSize: Size(400, 60)
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 23,
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
    );
  }
}
