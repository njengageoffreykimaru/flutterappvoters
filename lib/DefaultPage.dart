import 'package:flutter/material.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
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

            SizedBox(height: 50 ,),




          ],
        ),



      ),
    );
  }
}
